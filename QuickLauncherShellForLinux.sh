#!/bin/bash
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
### This script can freely be used on any Linux based operating systems.
#
# Development on Ubuntu 18.04.1 x86 x64 
# Fork github repository on github.com/SecurityObesity/QuickLauncherShell
#
## Take responsibility for your own actions and please do not anything illegal with this script.
## Hope you are able using this script anyway. Have fun and happy hacking...

trap 'echo -e "\nCaptured Interrupt Signal *//\~\//* please invoke gracefully process handle";' SIGTERM SIGINT SIGTSTP
trap 'gracefullyonexit' SIGQUIT EXIT

pause()
{
	local m="$@"
	echo "$m"
	read -p "Press [Enter] key to continue..." key
}

function gracefullyonexit()
{
	echo -e "\nQuick Launcher Shell script gracefully exiting...\n"
	exit 0
}

function download-file-webrequest()
{
	# Always make sure that wget is correctly installed and executable on your local system
	wget $1 --no-dns-cache --progress=bar --show-progress --no-check-certificate --quiet --no-proxy --no-cookies --no-hsts
}

function schedule-download-file()
{
	declare -a allUriPaths=("https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/1901020099/AcroRdrDC1901020099_en_US.exe" "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_30mb.mp4")
	for i in "${allUriPaths[@]}"
	do
   		echo -e "\nDownloader $i : "
   		download-file-webrequest "$i"
   		echo "Download Finished."
	done
}

function multivector-download-file()
{
	# You are of course welcome to download files you might need through your internet browser
	echo
	echo -e "You can download all files you might need to download.\nBe aware about that its not inherently illegal downloading files on the internet, then you need to be proven guilty in illegal act."
	while :
	do
		echo
		read -r -p "Enter the Url path to download file: " urlfile
		if [ ! -z $urlfile ];
		then
			echo -e "\nDownloader $urlfile : "
			download-file-webrequest "$urlfile"
			echo "Download Finished."
		fi
		echo
		read -r -p "Do you want go back to main menu and move forward? [Y/n] " response
 		response=${response,,}
 		if [[ $response =~ ^(yes|y| ) ]]; then
    		break
 		fi
	done
}

while :
do
	clear
	echo "---------------------------------------------------------"
	echo "	 Q U I C K - L A U N C H E R - S H E L L"
	echo "---------------------------------------------------------"
	echo "1. Say Hello, World!"
	echo "2. Download file from the internet"
	echo "3. Multible download files"
	echo "4. Exit"
	read -r -p "Enter your choice [1-4] : " c

	case $c in
		1) echo "Hello, World!"
		pause
		;;
		2) multivector-download-file
		pause
		;;
		3) schedule-download-file
		pause
		;;
		4) exit
		;;
		*) echo "Select between 1 to 4 only"
		pause
		;;
	esac
done