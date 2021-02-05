#!/bin/bash

echo "Installing GRASS geospatial suite"
# upgrade + dependencies
# https://grasswiki.osgeo.org/wiki/Compile_and_Install_Ubuntu#Current_stable_Ubuntu_version
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install build-essential
sudo apt-get install flex make bison gcc libgcc1 g++ cmake ccache -y
sudo apt-get install python python-dev -y
sudo apt-get install python-opengl -y
sudo apt-get install python-wxversion python-wxtools python-wxgtk3.0 -y
sudo apt-get install python-dateutil libgsl-dev python-numpy -y
sudo apt-get install wx3.0-headers wx-common libwxgtk3.0-gtk3-0v5 -y
sudo apt-get install libwxbase3.0-dev -y
sudo apt-get install libncurses5-dev -y
sudo apt-get install zlib1g-dev gettext -y
sudo apt-get install libtiff5-dev libpnglite-dev -y
sudo apt-get install libcairo2 libcairo2-dev -y
sudo apt-get install sqlite3 libsqlite3-dev -y
sudo apt-get install libpq-dev -y
sudo apt-get install libreadline6-dev libfreetype6-dev -y
sudo apt-get install libfftw3-3 libfftw3-dev -y
sudo apt-get install libboost-thread-dev libboost-program-options-dev -y
sudo apt-get install resolvconf -y
sudo apt-get install libjasper-dev -y
sudo apt-get install subversion -y
sudo apt-get install libav-tools libavutil-dev ffmpeg2theora -y
sudo apt-get install libffmpegthumbnailer-dev -y
sudo apt-get install libavcodec-dev -y
sudo apt-get install libxmu-dev -y
sudo apt-get install libavformat-dev libswscale-dev -y
sudo apt-get install checkinstall -y
sudo apt-get install libglu1-mesa-dev libxmu-dev -y
sudo apt-get install ghostscript -y

#proj.4
sudo apt-get install libproj-dev proj-data proj-bin -y

#geos
sudo apt-get install libgeos-dev libgeos-c1v5 -y

#gdal
sudo apt-get install libgdal-dev -y
sudo apt-get install gdal-bin -y

#dependencies for rgeos, rgdal
sudo apt-get install libudunits2-dev

#grass
svn co https://svn.osgeo.org/grass/grass/branches/releasebranch_7_2 grass72_release
cd grass72_release
CFLAGS="-O2 -Wall" LDFLAGS="-s" ./configure \
--enable-largefile=yes \
--with-nls \
--with-cxx \
--with-proj-share=/usr/share/proj/ \ #this isn't working
--with-geos=/usr/bin/geos-config \
--with-readline \
--with-python=yes \
--with-wxwidgets \
--with-cairo \
--with-opengl-libs=/usr/include/GL \
--with-motif \
--with-tcltk-includes="/usr/include/tcl8.5" \
--with-ffmpeg=yes --with-ffmpeg-includes="/usr/include/libavcodec /usr/include/libavformat /usr/include/libswscale /usr/include/libavutil" \
--with-freetype=yes --with-freetype-includes="/usr/include/freetype2/" \
--with-postgres=yes --with-postgres-includes="/usr/include/postgresql" \
--with-sqlite=yes \
--with-mysql=no --with-mysql-includes="/usr/include/mysql" \
--with-odbc=no