# Criar o ficheiro
touch $1.sh

# Dar premissões de execução 
chmod +x $1.sh

# Como se chama a o ficheiro que estamos a criar
echo "Estamos a criar o ficheiro $1.sh"

# Por na primeira linha do Script o nome do ficheiro que criámos
echo "#$1.sh" >> $1.sh
 
