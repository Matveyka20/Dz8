#!/bin/bash

read -p "Введите путь к директории: " Dir
if [[-d "$Dir"]]; then
  echo "Директории не существует"
else
  rm -rfм Dir/*.bak
  rm -rfм Dir/*.tmp
  rm -rfм Dir/*.backup
fi
