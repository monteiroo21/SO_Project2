#!/bin/bash

# comando para remover todos os segmentos de memória compartilhada no Unix-like systems
# ./clean
ipcrm -a

# Navega para o diretório src
cd ../src

# Verifica se há argumentos
if [ $# -eq 0 ]; then
    # Se não houver argumentos, executa make all_bin
    make all_bin
else
    # Se houver argumentos, executa make com o primeiro argumento
    make "$1"
fi

# Navega para o diretório run
cd ../run

# Executa o programa probSemSharedMemRestaurant
./probSemSharedMemRestaurant


