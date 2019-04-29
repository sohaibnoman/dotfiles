# check command line arguments
if [ "$1" == "-o" ]; then
	export CLI_ARG="o"
elif [ "$1" == "-y" ]; then
	export CLI_ARG="y"
elif [ "$1" == "--clean" ]; then
	export CLI_ARG="clean"
else
	export CLI_ARG="n" #just place holder
fi;
