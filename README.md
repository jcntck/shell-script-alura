# Curso Shell Scripting

Curso de Shell Scripting disponibilizado pela Alura e foi dividido em duas partes.

## Parte 1

### conversao-jpg-png.sh
Faz a leitura de todas as imagens JPG de determinada pasta e as converte para PNG.

Log de erros: *./errors.txt*

### conversao-diferentes-diretorios.sh
Realiza a leitura do diretório de forma recursiva procurando imagens no formato JPG e convertendo essas imagens para PNG.

Log de erros: *./errors_2.txt*

### processos-memoria-alocada.sh
Procura os processos com maior quantidade de memória alocada e salva em um arquivo com o nome do processo seguido da extensão .log dentro da pasta *./log*.

Exemplo: `./log/firefox.log`

Log de erros: *./processes_errors.txt*

## Parte 2

### filter_results_apache.sh
Filtra todos os resultados do apache.log passando um IP como paramêtro.

### filter_requests.sh
Filtra todos os resultados do apache.log passando um método HTTP como paramêtro.
