# drecvm - Dados de Resultados de Empresas de Capital Aberto obtidos da CVM.
Repositório utilizado para o trabalho final da discplina Fundamentos de Data Science no Porograma de pós graduação em Informática (PPGI) da da UFRJ. 

[![DOI](https://zenodo.org/badge/536824186.svg)](https://zenodo.org/badge/latestdoi/536824186)

### Pré-requisitos:

Ter o Docker instalado para poder rodar o container no ambiente que será executado!

### Plataformas testadas:

As seguintes plataformas foram testadas:

Plataforma | Resultado
---------- | ---------
Windows 10 + Docker V19.03.8 | OK
Ubuntu 22.04 + Docker V20.10.14 | OK

## Execucao rapida (diretamente do Docker Hub)
1 - Rodar o docker com os dados da imagem já publicada no docker hub
```
$ docker run -p 8888:8888 obinvest/drecvm:1.0
```
3 - Abrir no navegador da maquina host e acessar a URL do jupyter notbook

http://127.0.0.1:8888

## Executando localmente from scratch
1 - Clonar esse repositório
```    
$ git clone https://github.com/OBInvest/drecvm.git
```  
2 - Abrir o terminal e rodar o comando que cria uma nova imagem a partir do docker file do diretorio raiz do repositório que foi clonado
```    
$ docker build -t obinvest/drecvm:1.0 .
```    
3 - Executar a imagem e com isso criar o container e rodando o jupter no diretorio que ele ja baixou o notebook do trabalho
```
$ docker run -p 8888:8888 obinvest/drecvm:1.0
```
4 - Abrir no navegador da maquina host e acessar a URL do jupyter notbook

http://127.0.0.1:8888
