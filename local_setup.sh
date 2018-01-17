#!/bin/bash
mysql -uroot -proot -h 127.0.0.1 -e "create database aub_local"

if pushd "htdocs/sites/default" > /dev/null; then
  #ln -sf ../../../settings/local.settings.php settings.php
  mkdir files  
  chmod 775 files
  chown www-data files
  mkdir files/translations
  chmod 775 files/translations
  chown www-data files/translations

  cp default.settings.php settings.php
  chmod 775 settings.php
  chown www-data settings.php
fi
