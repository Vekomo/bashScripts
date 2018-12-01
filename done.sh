#!/bin/bash

function cmDirs {

  CS='Documents/santaCruz/fall2018/cmps101'
  MISC='Documents/misc'

  if [ ! -d CS ]; then
    mkdir $CS
  fi
  if [ ! -d MISC ]; then
    mkdir $MISC
  fi

  return 0
}
cmDirs

cd Desktop
echo "ANTES"
ls

for i in $( ls ); do
  if  [[ ${i:0:2} == "CS" ]]; then
    mv $i ../
    cd ..
    mv $i $CS
    cd Desktop
  elif [[ -f "${i}" ]] && [[ $i != *.sh ]]; then
    mv $i ../
    cd ..
    mv $i $MISC
    cd Desktop
  fi
done

echo "DESPUES"
ls
