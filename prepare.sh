#!/usr/bin/env bash

cat > ./README.md << "EOF"

# Description

My Gentoo overlay.

# Configuration

* Add 'https://github.com/Scrill/scrill-overlay/raw/master/scrill-overlay.xml' to layman.cfg in 'overlays' section.
* Enable overlay in layman:

	layman -f
	layman -a scrill

# Content

EOF

for category in `ls -1 | grep -e "...-.*"`; do
    if [ -d "./${category}" ]; then
	echo "* ${category}" >> ./README.md
	for package in `ls -1 ./${category}`; do
	    echo -ne "\tPackage:\t${package}\n\tVersions:\t" >> ./README.md
	    for ebuild in `ls -1 ./${category}/${package} | grep -e "ebuild$"`; do
		echo -n "$ebuild" | sed -E s%${package}-\|\.ebuild%%g >> ./README.md
		echo -n "  " >> ./README.md
	    done
	    ebuild ./${category}/${package}/${ebuild} manifest
	    echo -ne "\n\tDescription:\t" >> ./README.md
	    cat ./${category}/${package}/${ebuild} | grep 'DESCRIPTION' | awk -F '"' '{print $2}' >> ./README.md
	    echo >> ./README.md
	done
    fi
done

exit 0
