#!/bin/bash

echo "Available package managers: "
MANAGERS=$(ls package_managers)
echo $MANAGERS > tmp

tr ' ' '\n' < tmp > tmp2
awk -F '.' '{print $1}' tmp2 > tmp

LINE=$(cat tmp)

CNT=0

for line in $LINE
do
  echo $CNT $line
  let CNT=CNT+1
done

echo "Choose your package manager: " && read MANAGER_NUM #REMOVE NEWLINE

let CNT=0
for line in $LINE
do
  if [ $MANAGER_NUM == $CNT ]
  then
    ./package_managers/$line.sh
  fi
  
  let CNT=CNT+1
done

#Install ohMyZsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Copy zsh and neofetch configs
#cp configs/zshConfig $HOME/.zshrc
#cp configs/neofetchConfig $HOME/.config/neofetch/config.conf

rm tmp tmp2
