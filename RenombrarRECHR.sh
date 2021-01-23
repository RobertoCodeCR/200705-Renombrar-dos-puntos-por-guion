#!/bin/bash
#Roberto Eulogio Chavez Ramos (RobertoCodeCR, RobertoIngECR, RECHR)
echo "PROGRAMA PARA CAMBIAR DOS PUNTOS POR GUIÓN MEDIO EN *.MP4";

contador=0;
for FILE in *.mp4;
do
	NEWFILE=`echo $FILE | sed 's/:/-/g'`;
	if  [[ "$FILE" != "$NEWFILE" ]]; then
		mv "$FILE" "$NEWFILE";
		echo "$FILE" fue renombrado a "$NEWFILE";
		contador=$((contador+1));
	fi
done

echo "Archivos renombrados correctamente: $contador";
echo -n "Presione una tecla para terminar...."
read x
exit
