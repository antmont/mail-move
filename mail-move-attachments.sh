#! /bin/bash

logFile=~/develop/mail-move/mail-move.log

# Comment out the following logfile enty once debugging of launchd
# is complete.
echo $(date +%b%e%t%T) $0: script initiated >> $logFile

for fullfilename in ~/Downloads/mail/*.*; do
    [ -e "$fullfilename" ] || continue

	filename=$(basename -- "$fullfilename")

	# prefix is filename up to (not including) the first hyphen "-"
	prefix="${filename%%-*}"

	# set destination directory based on the extracted prefix
	case "$prefix" in
	internode | telstra | innerwest)
		baseDir=~/personal/finance/expenses/rates-utilities
		destDir="$baseDir"/"$prefix"
		validMove=1
		;;
	payslip)
		destDir=~/personal/finance/employment/abmdr/payslips
		validMove=1
		;;
	*)
		echo $(date +%b%e%t%T) $0: Unknown prefix $prefix for file $filename >> $logFile
		validMove=0
	esac


	# If destination directory does not exist, create it
	if [ ! -d $destDir ]; then
		echo $(date +%b%e%t%T) $0: Creating directory $destDir >> $logFile
		mkdir $destDir
	fi

	if [ $validMove == 1 ]; then
		echo $(date +%b%e%t%T) $0: Moving $filename to $destDir >> $logFile
		mv $fullfilename $destDir
	fi
done
