#/bin/bash
 
## sudo dpkg-reconfigure locales
## sudo update-locale LANG=sv_SE.UTF-8

sudo apt-fast update
sudo apt-fast upgrade

#
# Några program, tmux preload vlc Openssh Openjdk  gnome-system-tools och saker för ffmpeg, dock kommenterat
#
sudo apt install tmux preload flashplugin-installer chromium-browser gparted calibre python python-dev python-pip openssh-server openssh-client build-essential zip unzip rar unrar pavucontrol  svtplay-dl

## audiorecorder moc amarok  ranger

##  gnome-system-tools  openjdk-7-jre  chromium-pepper-flashclementine 


# if [ -f "install.apt-fast.sh" ]
# then
#	sh install.apt-fast.sh
# fi

if [ -f "install.glances.sh" ]
then
	sh install.glances.sh
fi

if [ -f "install.printer.sh" ]
then
	sh install.printer.sh
fi

if [ -f "install.spotify.sh" ]
then
	sh install.spotify.sh
fi

# if [ -f "install.kodi.sh" ]
# then
#	sh install.kodi.sh
# fi

# sudo apt-get autoremove

# exit

#if [ -f "install.ffmpeg.sh" ]
#then
#	sh install.ffmpeg.sh
#fi

## To change the swappiness into a more sensible setting, type
## gksudo xed  /etc/sysctl.conf

## Scroll to the bottom of the text file and add your swappiness parameter to override the default. Copy/paste the following two green lines:

## Decrease swap usage to a more reasonable level
## vm.swappiness=10


##
## All of them
##
# sudo apt-get install tmux preload skype gparted openssh-client python-pip build-essential python-dev  openjdk-7-jre  xubuntu-restricted-extras gnome-system-tools gparted libxine1-ffmpeg gxine mencoder mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 ffmpeg totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 libjpeg-progs flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview flac libmpeg3-1 mpeg3-utils mpegdemux liba52-0.7.4-dev libquicktime gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-gnonlin gstreamer0.10-plugins-bad-multiverse gstreamer0.10-plugins-bad gstreamer0.10-plugins-ugly totem-plugins-extra gstreamer-dbus-media-service gstreamer-tools ttf-mscorefonts-installer ubuntu-restricted-extras libxine1-ffmpeg gxine mencoder mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 ffmpeg totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 libjpeg-progs flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview flac libmpeg3-1 mpeg3-utils mpegdemux liba52-0.7.4-dev gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-gnonlin gstreamer0.10-plugins-bad-multiverse gstreamer0.10-schroedinger gstreamer0.10-plugins-ugly gstreamer-dbus-media-service gstreamer-tools

#sudo pip install Glances

#
# glances
#
# sudo apt-get install python-pip build-essential python-dev
#sudo pip install Glances

#
# File Archiving:
#
# sudo apt-get install unace rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract file-roller

#
# FFmpeg
#
# sudo apt-get install libxine1-ffmpeg gxine mencoder mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 ffmpeg totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 libjpeg-progs flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview flac libmpeg3-1 mpeg3-utils mpegdemux liba52-0.7.4-dev libquicktime2

##
## Gstreamer
##
# sudo apt-get install gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-gnonlin gstreamer0.10-plugins-bad-multiverse gstreamer0.10-plugins-bad gstreamer0.10-plugins-ugly totem-plugins-extra gstreamer-dbus-media-service gstreamer-tools ubuntu-restricted-extras ttf-mscorefonts-installer

##
## Codecs for XFCExubuntu-restricted-extras
##
# sudo apt-get install xubuntu-restricted-extras ubuntu-restricted-extras libxine1-ffmpeg gxine mencoder mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 ffmpeg totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 libjpeg-progs flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview flac libmpeg3-1 mpeg3-utils mpegdemux liba52-0.7.4-dev gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-gnonlin gstreamer0.10-plugins-bad-multiverse gstreamer0.10-schroedinger gstreamer0.10-plugins-ugly gstreamer-dbus-media-service gstreamer-tools

##
## Fix tmpfs in/etc/fstab
##

# Börja med en backup!
sudo mkdir $HOME/.backup
sudo cp /etc/fstab $HOME/.backup/fstab-$(date +%Y%m%d)
sudo cp /etc/sysctl.conf $HOME/.backup/sysctl-$(date +%Y%m%d)

sudo echo "" >> /etc/fstab
sudo echo "## tmpfs" >> /etc/fstab
sudo echo "tmpfs /var/tmp tmpfs	defaults	0 	0" >> /etc/fstab

sudo echo "" >> /etc/fstab

sudo echo "## .cache i RAM" >> /etc/fstab
sudo echo "tmpfs	/home/thomas/.cache 	tmpfs 	defaults 	0 	0" >> /etc/fstab

#sudo echo "" >> /etc/sysctl.conf
#sudo echo "vm.swappiness=10" >> /etc/sysctl.conf

##
## profile-sync-daemon
##

if [ -f "install.linux.mint.profile-sync-daemon.sh" ]
then
	./install.linux.mint.profile-sync-daemon.sh
fi

##
## And you can remove the following applications that you will probably never use (optional):
##
# sudo apt-get purge mint-search-addon mintbackup mint-stylish-addon oneconf popularity-contest python-ubuntuone-client python-ubuntuone-storageprotocol ubuntuone-installer python-ubuntuone-control-panel rhythmbox-ubuntuone ubuntuone-client ubuntuone-client-gnome ubuntuone-control-panel unity-scope-musicstores deja-dup libfreerdp1 remmina remmina-common vino remmina-plugin-rdp remmina-plugin-vnc activity-log-manager-common python-zeitgeist activity-log-manager-control-center rhythmbox-plugin-zeitgeist unity-lens-video unity-scope-video-remote zeitgeist  zeitgeist-core zeitgeist-datahub rsync

if [ -f "info.sh" ]
then
	./info.sh
fi


# i upgrade.sh: sudo apt-get dist-upgrade
# sudo dd if=/home/thomas/linux/linuxmint-16-xfce-dvd-64bit.iso of=/dev/sdj1 oflag=direct  bs=1048576
