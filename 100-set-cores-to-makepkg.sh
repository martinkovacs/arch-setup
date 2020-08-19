#!/bin/bash

numberofcores=$(grep -c ^processor /proc/cpuinfo)

function set_core_count {
    echo -e "##########\nChanging the makeflags for "$numberofcores" cores.\n##########"
    sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j'$(($numberofcores+1))'"/g' /etc/makepkg.conf;
    
    echo -e "##########\nChanging the compression settings for "$numberofcores" cores.\n##########"
    sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T '"$numberofcores"' -z -)/g' /etc/makepkg.conf
}

set_core_count

echo -e "##########\nAll cores will be used during building and compression.\n##########"
