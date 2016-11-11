#!/bin/sh
set -x
set -u
echo "Introduce ruta a cambiar"
read directorio
	if ! [ -d "$directorio" ]; then
		echo "No existe el directorio. Se utiliza el directorio actual"
		
		directorio="$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

	fi
	cd $directorio

for f in `*`; do

	g=`echo "$f" | tr '[:upper:]' '[:lower:]'`

	echo $f,$g

	if [ $f != $g ]; then

		mv "$f" "$g"

	fi

done
