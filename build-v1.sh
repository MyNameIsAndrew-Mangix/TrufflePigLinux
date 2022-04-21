#!/bin/bash


##############################
# tput setaf colors			 #
# BLACK = 0					 #
# RED = 1					 #
# GREEN = 2					 #
# YELLOW = 3				 #
# BLUE = 4					 #
# MAGENTA = 5				 #
# CYAN = 6					 #
# WHITE = 7					 #
# DEFUALT = 0 OR tput sgr0	 #
##############################


#Print to terminal where we are at in the building process
print_cur_step () {
	local TEXT=$1
	local COLOR=$2
	local ERROR=""

	#If no arguments, use default text and colors.
	if [ $# -eq 0 ]
		then
			TEXT="DEFAULT TEXT"
			COLOR=2
			ERROR="'\033[1;33m'##No argument supplied at ${BASH_LINENO}, printing default text with default color"
	fi
	if [ $# -eq 1 ]
		then
			COLOR=2
			ERROR="\033[1;33m##No color specified, using default color"
fi

	#Print
	tput setaf $COLOR
	echo "---------------------------------------"
	if [ ERROR!="" ]; then echo -e $ERROR && COLOR=2; fi
	tput setaf $COLOR
	echo "++"$TEXT
	echo "---------------------------------------"
	tput sgr0
}

print_cur_step "Building ISO. This may take a while, so be patient!" 

sudo mkarchiso -v ./