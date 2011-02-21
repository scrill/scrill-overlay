#!/usr/bin/env bash

cat > ./README << "EOF"
### My Gentoo overlay ###

Configuration:

1. Add 'https://github.com/Scrill/scrill-overlay/raw/master/scrill-overlay.xml' to layman.cfg in 'overlays' section.
2. Enable overlay in layman:
  # layman -f
  # layman -a scrill

Content:

EOF

for category in `ls -1 | grep -e "...-.*"`; do
    if [ -d "./${category}" ]; then
	echo "# ${category}" >> ./README
	for package in `ls -1 ./${category}`; do
	    echo -ne "\tPackage:\t${package}\n\tVersions:\t" >> ./README
	    for ebuild in `ls -1 ./${category}/${package} | grep -e "ebuild$"`; do
		echo -n "$ebuild" | sed -E s%${package}-\|\.ebuild%%g >> ./README
		echo -n "  " >> ./README
		ebuild ./${category}/${package}/${ebuild} manifest
	    done
	    echo -ne "\n\tDescription:\t" >> ./README
	    cat ./${category}/${package}/${ebuild} | grep 'DESCRIPTION' | awk -F '"' '{print $2}' >> ./README
	    echo >> ./README
	done
    fi
done

exit 0
