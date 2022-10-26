#!/bin/awk-f
# lectura de fichero
BEGIN{
	FILE_PATH="./exercicis-linux/practiques/Practica1/titles.cvs"
	FS=","
# Cambio de caracteres
	gsub(",,", ", ,")

# Limpieza identificadores
	v1=$1
	if(index(v1, "tm")==1 || index(v1, "ts")==1)
# Titulos con inicio de caracteres no alfanumericos
	v2=$2
	#gsub(/[^[:alpha:]]+/," ",v2)
	if(v2 !~/^[^A-Za-z]/)

# Separamos por tipo de contrenido multimedia
	v3=$3
	if(NR=1 || v3=="MOVIE") print > "file1.csv";
	if(NR=1 || v3=="SHOW") print > "file2.csv";
}; 
# Eliminar registros vacios y contarlos
BEGIN
{
        FILE_PATH="./exercicis-linux/practiques/Practica1/file1.csv"
        FS=","
        v11=$11; v12=$12; v13=$13; v14=$14
        if((v11 && v12 && v13 && v14) !~/^$/d); print  > "file1_1.csv"
}




