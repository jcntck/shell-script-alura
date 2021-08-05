
#!/bin/bash

cd logs

if [ -z $1 ]
then
	read -p "Please, input a http method (GET, PUT, POST, DELETE): " request
	upper_case=$(echo $request | awk '{ print toupper($1) }')
else
	upper_case=$(echo $1 | awk '{ print toupper($1) }')
fi

case $upper_case in
	GET)
	cat apache.log | grep GET
	;;
	
	POST)
	cat apache.log | grep POST
	;;
	
	PUT)
	cat apache.log | grep PUT
	;;
	
	DELETE)
	cat apache.log | grep DELETE
	;;
	
	*)
	echo "HTTP Method invalid"
	;;
esac
