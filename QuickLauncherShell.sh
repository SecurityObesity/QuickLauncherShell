#!/bin/bash
#
# Application Name: Quick Launcher Shell For Mac OS X Mavericks
# Copyright © 2017 Andreas Gravengaard Larsen <dexoidan@gmail.com>
#
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
# ---------------------------------------------------------------------------
# Purpose: Security Research, Security Testing, Programming in Bash and AppleScript for Apple Mac OS X
# ---------------------------------------------------------------------------
# Developer: twitter @dexoidan
# ---------------------------------------------------------------------------
# Description: 	Quick Launcher Shell is developed for having a open source bash script
#				that have several various functions and can be used responsibly in a Mac
# ---------------------------------------------------------------------------

on_complete()
{
	osascript -e 'tell application "System Events" to key code 36'		
}
trap 'echo -e "\nCaptured Interrupt Signal *//\~\//* invoking gracefully process handle"; on_complete 2> /dev/null; break' SIGTERM SIGINT SIGTSTP
trap 'killall KeyboardViewer 2> /dev/null' SIGQUIT EXIT

pause()
{
	local m="$@"
	echo "$m"
	read -p "Press [Enter] key to continue..." key
}

launchDiskUtility()
{
	echo -e "\nLaunching Disk Utility App...\n"
	
	if [ -d "/Applications/Utilities/Disk Utility.app" ];
	then
		open -n -a 'Disk Utility'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchSystemInformation()
{
	echo -e "\nLaunching System Information App...\n"

	if [ -d "/Applications/Utilities/System Information.app" ];
	then
		open -n -a 'System Information'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchAppStore()
{
	echo -e "\nLaunching App Store App...\n"
	
	if [ -d "/Applications/App Store.app" ];
	then
		open -n -a 'App Store'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchSystemPreferences()
{
	echo -e "\nLaunching System Preferences App...\n"
	
	if [ -d "/Applications/System Preferences.app" ];
	then
		open -n -a 'System Preferences'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchXcode()
{
	echo -e "\nLaunching Xcode Developer App...\n"

	if [ -d "/Applications/Xcode.app" ];
	then
		open -n -a 'Xcode'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchActivityMonitor()
{
	echo -e "\nLaunching Activity Monitor App...\n"

	if [ -d "/Applications/Utilities/Activity Monitor.app" ];
	then
		open -n -a 'Activity Monitor'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchFinderWindow()
{
	echo -e "\nOpen New Finder Window to Desktop Folder...\n"
	osascript -e 'tell application "Finder" to open (path to desktop folder) activate'
}

launchTextEdit()
{
	echo -e "\nLaunching TextEdit App...\n"

	if [ -d "/Applications/TextEdit.app" ];
	then
		open -n -a 'TextEdit'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchAutomator()
{
	echo -e "\nLaunching Automator App...\n"

	if [ -d "/Applications/Automator.app" ];
	then
		open -n -a 'Automator'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchiTunes()
{
	echo -e "\nLaunching iTunes App...\n"

	if [ -d "/Applications/iTunes.app" ];
	then
		open -n -a 'iTunes'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchiBooks()
{
	echo -e "\nLaunching iBooks App...\n"

	if [ -d "/Applications/iBooks.app" ];
	then
		open -n -a 'iBooks'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchStickies()
{
	echo -e "\nLaunching Stickies App...\n"

	if [ -d "/Applications/Stickies.app" ];
	then
		open -n -a 'Stickies'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchCalendar()
{
	echo -e "\nLaunching Calendar App...\n"

	if [ -d "/Applications/Calendar.app" ];
	then
		open -n -a 'Calendar'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchChess()
{
	echo -e "\nLaunching Chess App...\n"

	if [ -d "/Applications/Chess.app" ];
	then
		open -n -a 'Chess'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchMail()
{
	echo -e "\nLaunching Mail App...\n"

	if [ -d "/Applications/Mail.app" ];
	then
		open -n -a 'Mail'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchLaunchPad()
{
	echo -e "\nLaunching LaunchPad App...\n"

	if [ -d "/Applications/Launchpad.app" ];
	then
		open -n -a 'Launchpad'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchMissionControl()
{
	echo -e "\nLaunching Mission Control App...\n"

	if [ -d "/Applications/Mission Control.app" ];
	then
		open -n -a 'Mission Control'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchDashBoard()
{
	echo -e "\nLaunching Dashboard App...\n"

	if [ -d "/Applications/Dashboard.app" ];
	then
		open -n -a 'Dashboard'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchFaceTime()
{
	echo -e "\nLaunching FaceTime App...\n"

	if [ -d "/Applications/FaceTime.app" ];
	then
		open -n -a 'FaceTime'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchContacts()
{
	echo -e "\nLaunching Contacts App...\n"

	if [ -d "/Applications/Contacts.app" ];
	then
		open -n -a 'Contacts'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchSafari()
{
	echo -e "\nLaunching Safari Web Browser App...\n"

	if [ -d "/Applications/Safari.app" ];
	then
		open -n -a 'Safari'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchMaps()
{
	echo -e "\nLaunching Apple Maps App...\n"

	if [ -d "/Applications/Maps.app" ];
	then
		open -n -a 'Maps'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchAppleScriptEditor()
{
	echo -e "\nLaunching AppleScript Editor App...\n"

	if [ -d "/Applications/Utilities/AppleScript Editor.app" ];
	then
		open -n -a 'AppleScript Editor'
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

launchTerminal()
{
	echo "Launching New Terminal Window..."
	osascript -e 'tell application "System Events" to keystroke "n" using {command down}'
}

launchRootTerminalShell()
{
	echo "This action should be used with caution! Dangerous Commands Can Be Executed!"
	echo "Launching new Terminal with Administrative Privileges..."
	osascript -e 'do shell script "/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal > /dev/null 2>&1 &" with administrator privileges' -e 'delay 2' -e 'tell application "System Events" to keystroke tab using {command down, shift down}'
}

launchKeyboardViewer()
{
	echo -e "\nLaunching Keyboard Viewer App...\n"

	if [ -d "/System/Library/Input Methods/KeyboardViewer.app" ];
	then
		open -n -a "/System/Library/Input Methods/KeyboardViewer.app"
	else
		echo -e "The application you try to start is might not be installed.\n"
	fi
}

shutdownMacOSnow()
{
	echo -e "\nMake sure you have closed all applications, before you shut down the computer.\n"
	read -p "Are you completely sure you want to shutdown the computer? [y/n] " -n 1 -r
	echo -e "\n"
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
	    echo -e "Program is successfully exit the execution cycle. Have a good day."
	    osascript -e 'tell application "Finder" to delay 3 shut down'
	fi
}
 
while :
do
	clear
	echo "---------------------------------------------------------"
	echo "	 Q U I C K - L A U N C H E R - S H E L L"
	echo "---------------------------------------------------------"
	echo "1.  Launch Apple App Store"
	echo "2.  Launch System Preferences"
	echo "3.  Launch Disk Utility"
	echo "4.  Launch System Information"
	echo "5.  Launch Activity Monitor"
	echo "6.  Launch Automator"
	echo "7.  Launch Mail"
	echo "8.  Launch iTunes"
	echo "9.  Launch Xcode"
	echo "10. Launch Safari"
	echo "11. Launch Maps"
	echo "12. Launch Calendar"
	echo "13. Launch Mission Control"
	echo "14. Launch Dashboard"
	echo "15. Launch LaunchPad"
	echo "16. Launch TextEdit"
	echo "17. Launch FaceTime"
	echo "18. Launch Chess"
	echo "19. Launch iBooks"
	echo "20. Launch Stickies"
	echo "21. Launch Contacts"
	echo "22. Launch AppleScript Editor"
	echo "23. Launch Terminal"
	echo "24. Launch Root Terminal Window"
	echo "25. Open New Finder Window In Desktop"
	echo "26. Exit Program"
	echo "27. Launch Keyboard Viewer"
	echo "28. Shutdown The Computer Now"
	echo "---------------------------------------------------------"
	echo "Developer Note: Emergency Exit - CTRL+Z CTRL+C"
	echo "---------------------------------------------------------"
	read -r -p "Enter your choice [1-28] : " c
	
	case $c in
		1) launchAppStore
		pause
		;;
		2) launchSystemPreferences
		pause
		;;
		3) launchDiskUtility
		pause
		;;
		4) launchSystemInformation
		pause
		;;
		5) launchActivityMonitor
		pause
		;;
		6) launchAutomator
		pause
		;;
		7) launchMail
		pause
		;;
		8) launchiTunes
		pause
		;;
		9) launchXcode
		pause
		;;
		10) launchSafari
		pause
		;;
		11) launchMaps
		pause
		;;
		12) launchCalendar
		pause
		;;
		13) launchMissionControl
		pause
		;;
		14) launchDashBoard
		pause
		;;
		15) launchLaunchPad
		pause
		;;
		16) launchTextEdit
		pause
		;;
		17) launchFaceTime
		pause
		;;
		18) launchChess
		pause
		;;
		19) launchiBooks
		pause
		;;
		20) launchStickies
		pause
		;;
		21) launchContacts
		pause
		;;
		22) launchAppleScriptEditor
		pause
		;;
		23) launchTerminal
		pause
		;;
		24) launchRootTerminalShell
		pause
		;;
		25) launchFinderWindow
		pause
		;;
		26) echo "Program is successfully exit the execution cycle. Have a good day."
		break
		;;
		27) launchKeyboardViewer
		pause
		;;
		28) shutdownMacOSnow
		break
		;;
		*) echo "Select between 1 to 28 only"
		pause
		;;
	esac
done