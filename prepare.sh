#!/usr/bin/env bash

readme='./README'

cat > $readme << "EOF"
### Scrill overlay

Configuration:

Enable overlay in layman:

  # layman -a scrill

Content:

EOF

for category in `ls -1 | grep -e "...-.*"`; do
  if [ -d "./${category}" ]; then
    echo -e "  ${category} {\n" >> $readme
    for package in `ls -1 ./${category}`; do
      echo -ne "    Package:     ${package}\n    Versions:    " >> $readme
      for ebuild in `ls -1 ./${category}/${package} | grep -e "ebuild$"`; do
        echo -n "$ebuild" | sed -E s%${package}-\|\.ebuild%%g >> $readme
        echo -n "  " >> $readme
      done
      ebuild ./${category}/${package}/${ebuild} manifest
      echo -ne "\n    Description: " >> $readme
      cat ./${category}/${package}/${ebuild} | grep 'DESCRIPTION' | awk -F '"' '{print $2}' >> $readme
      echo >> $readme
    done
    echo -e "  }\n" >> $readme
  fi
done

exit 0
