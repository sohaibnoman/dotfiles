# define reusable function
function syml {

	# check for clean flag
	if [ $CLI_ARG == "clean" ] ; then
		file="$2.f_backup"

		# delete all the .f_backup files
		if [ -f $file ] || [ -d $file ] ; then
			echo "* deleting $file"
			rm -rf $file
		fi;

	else
		# check for bypass argument
		if ( [ $CLI_ARG == "y" ] || [ $CLI_ARG == "o" ] ) ; then
			cont="y"
		else
			echo -n "symlink $1 to $2? [Y/o/n]: "
			read cont
		fi;

		# check user choice
		if [ -z $cont ] || [ $cont == "Y" ] || [ $cont == "y" ] || [ $cont == "o" ] ; then

			# check if file exists
			if [ -f $2 ] || [ -d $2 ] ; then
				# check if override is given by user
				if [ "$cont" == "o" ] || [ $CLI_ARG == "o" ] ; then
					# delete
					echo "* deleting $2"
					rm -rf $2
				else
					# backup
					echo "* creating $2.f_backup"
					mv "$2" "$2.f_backup"
				fi;
			fi;

			# find absolute paths for symlinks
			FROM="$(pwd)/$1";
			TO="$2"

			# write file
			echo "* ln -s $FROM $TO"
			ln -s $FROM $TO
		else
			echo "* Skipping..."
		fi;
	fi;
}

