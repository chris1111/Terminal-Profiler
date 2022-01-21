# Apple Script by chris1111 
# Copyright (c) 2021 chris1111 All rights reserved.
set Term to choose from list {"Pro", "Homebrew", "Basic", "Grass", "Man Page", "Novel", "Ocean", "Red Sands", "Silver Aerogel", "Solid Colors"} with title "Setup Terminal Profiles" with prompt "Which profiles do you want to uses?" default items "Pro" OK button name {"Profiles"} cancel button name {"Cancel"}

tell application "Terminal"
	activate
end tell

do shell script "killall -c Terminal"

if Term is false then
	display dialog "Quit Terminal Profiler" with icon note buttons {"Exit"} default button {"Exit"}
	error number -128
end if
set n to 10
set progress total steps to n
set progress description to "Setup Profile"
set progress additional description to "Setup Terminal ➤ " & Term

repeat with i from 1 to n
	delay 0.1
	set progress completed steps to i
end repeat

if Term is {"Pro"} then
	do shell script "defaults write com.apple.terminal 'Default Window Settings' Pro"
	do shell script "defaults write com.apple.terminal 'Startup Window Settings' Pro"
	delay 1
	do shell script "killall Finder"
	
else if Term is {"Homebrew"} then
	do shell script "defaults write com.apple.terminal 'Default Window Settings' Homebrew"
	do shell script "defaults write com.apple.terminal 'Startup Window Settings' Homebrew"
	delay 1
	do shell script "killall Finder"
	
else if Term is {"Basic"} then
	do shell script "defaults write com.apple.terminal 'Default Window Settings' Basic"
	do shell script "defaults write com.apple.terminal 'Startup Window Settings' Basic"
	delay 1
	do shell script "killall Finder"
	
else if Term is {"Grass"} then
	do shell script "defaults write com.apple.terminal 'Default Window Settings' Grass"
	do shell script "defaults write com.apple.terminal 'Startup Window Settings' Grass"
	delay 1
	do shell script "killall Finder"
	
else if Term is {"Man Page"} then
	do shell script "defaults write com.apple.terminal 'Default Window Settings' 'Man Page'"
	do shell script "defaults write com.apple.terminal 'Startup Window Settings' 'Man Page'"
	delay 1
	do shell script "killall Finder"
	
else if Term is {"Novel"} then
	do shell script "defaults write com.apple.terminal 'Default Window Settings' Novel"
	do shell script "defaults write com.apple.terminal 'Startup Window Settings' Novel"
	delay 1
	do shell script "killall Finder"
	
else if Term is {"Ocean"} then
	do shell script "defaults write com.apple.terminal 'Default Window Settings' Ocean"
	do shell script "defaults write com.apple.terminal 'Startup Window Settings' Ocean"
	delay 1
	do shell script "killall Finder"
	
else if Term is {"Red Sands"} then
	do shell script "defaults write com.apple.terminal 'Default Window Settings' 'Red Sands'"
	do shell script "defaults write com.apple.terminal 'Startup Window Settings' 'Red Sands'"
	delay 1
	do shell script "killall Finder"
	
else if Term is {"Silver Aerogel"} then
	do shell script "defaults write com.apple.terminal 'Default Window Settings' 'Silver Aerogel'"
	do shell script "defaults write com.apple.terminal 'Startup Window Settings' 'Silver Aerogel'"
	delay 1
	do shell script "killall Finder"
	
else if Term is {"Solid Colors"} then
	do shell script "defaults write com.apple.terminal 'Default Window Settings' 'Solid Colors'"
	do shell script "defaults write com.apple.terminal 'Startup Window Settings' 'Solid Colors'"
	delay 1
	do shell script "killall Finder"
	
end if

tell application "Terminal"
	activate
end tell

delay 1

do shell script "killall -c Terminal"
