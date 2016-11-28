#!/bin/bash
clean(){
  	newname=`echo $file|sed -e 's/ \-/_/g'|tr -d '[:space:]'`
  	mv "$file" "$newname"
}



for token in $*
do
	if [ ! -d /Users/assansanogo/Downloads/"$token" ]
		then
			mkdir /Users/assansanogo/Downloads/"$token"
	else
		echo "this is NOT an empty directory"
	fi

	for file in *."$token"
		do
			clean

		done

	for file in *."$token"
		do
			mv $file /Users/assansanogo/Downloads/"$token"/$file
		done
done
