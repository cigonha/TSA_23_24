# Cria um array vazio para armazenar as presenças
declare -a presencas

# Loop para inserir nomes dos alunos
while true; do
    read -p "Digite o nome do aluno (ou 'q' para sair): " nome

    if [ "$nome" == "q" ]; then
        break
    fi

    presencas+=("$nome")
done

# Pede ao utilizador o nome do ficheiro de saida
echo
read -p "Digite o nome do ficheiro para guardar as presenças: " nome_ficheiro
echo
# Guardar as presenças no ficheiro
echo Lista de presenças: > $nome_ficheiro
echo >> $nome_ficheiro
for nome in "${presencas[@]}"; do
    echo "$nome" >> "$nome_ficheiro"
done
echo

echo As presenças foram guardadas em $nome_ficheiro
echo