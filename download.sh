#!/bin/bash
FILEURL=''
DIRNAME=''
i=0
for args in $@

 
do
   case $args in
      
	 
	
	--dirname=*)
	  DIRNAME=${args#*=}
	;;
	--fileurl=*)
	  FILEURL=${args#*=}
	;;
   esac
done

rm -rf  $DIRNAME

mkdir -p  $DIRNAME
cd $DIRNAME
 
     echo 'exec wget'
     curl -O $FILEURL
     sleep 2
	 var=$(ls $DIRNAME)

	 
     echo $var
	 cd $DIRNAME
     unzip "$var" 
 
exit 1


