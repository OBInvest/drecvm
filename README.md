# drecvm - Dados de Resultados de Empresas de Capital Aberto obtidos da CVM.
Repositório utilizado para o trabalho final da discplina Fundamentos de Data Science no Programa de pós graduação em Informática (PPGI) da da UFRJ. 

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7114963.svg)](https://doi.org/10.5281/zenodo.7114963)

## Licença
Este projeto está licenciado sob a licença Apache 2.0 - consulte o arquivo [LICENSE](LICENSE) para obter detalhes.

## Resumo do Trabalho 

### Como executar

#### Pré-requisitos:

Ter o Docker instalado para poder rodar o container no ambiente que será executado!

#### Plataformas testadas:

As seguintes plataformas foram testadas:

Plataforma | Resultado
---------- | ---------
Windows 10 + Docker V19.03.8 | OK
Ubuntu 22.04 + Docker V20.10.14 | OK

#### Execucao rapida (diretamente do Docker Hub)
1 - Rodar o docker com os dados da imagem já publicada no docker hub
```
$ docker run -p 8888:8888 obinvest/drecvm
```
3 - Abrir no navegador da maquina host e acessar a URL do jupyter notbook

http://127.0.0.1:8888

### Executando localmente from scratch
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

## Autores
- **Gilberto Gil F. Gomes Passos** - [@gilbertogilfgp](https://github.com/gilbertogilfgp)
- **Saulo A. Almeida** - [@sauloaalmeida](https://github.com/sauloaalmeida)
- **Valquire da S. de Jesus** - [@Valquire](https://github.com/Valquire)

## Como está organizado o repositório Git
data
- [`data`](data): diretório com os datasets brutos, baixados da CVM em 16/09/2022.
- [`DRE-CVM-PROV.png`](DRE-CVM-PROV.png): arquivo gerado com a proveniência no formato PNG.
- [`DRE-CVM-PROV.ttl`](DRE-CVM-PROV.ttl): arquivo gerado com a proveniência no formato DRF - Turtle.
- [`DRE-CVM-PROV.xml`](DRE-CVM-PROV.png): arquivo gerado com a proveniência no formato XML.
- [`Dockerfile`](Dockerfile): arquivo utilizado na criação da imagem Docker.
- [`LICENSE`](LICENSE): contém a licença do repositório.
- [`README.md`](README.md): conteúdo desse arquivo de README.
- [`artigo-dre_cmv.pdf`](artigo-dre_cmv.pdf): arquivo pdf do artigo.
- [`cmv-dre-analise.knwf`](cmv-dre-analise.knwf): arquivo knime com o workflow utilizano na exploração inicial dos datasetes.
- [`dicionario-dados-obinvest-dre-historico.csv`](dicionario-dados-obinvest-dre-historico.csv): arquivo com o dicionário de dados do dataset OBInvest.
- [`drecvm.ipynb`](drecvm.ipynb): contém o notebook python do experimento, que executar o processo de criação do Dataset OBInvest e geração da proveniência em tempo de execução.
- [`environment.yml`](environment.yml): contém as dependências utilizadas no projeto exportadas para arquivo yml.
- [`obinvest-dre-historico.csv`](obinvest-dre-historico.csv): arquivo com o Dataset OBInvest gerado durante a execução do experimento.

## Como Citar
Se você utilizar este repositório em seu trabalho, por favor, cite o artigo:

>Gilberto Gil F. Gomes Passos, Saulo A. Almeida &, Valquire da S. de Jesus. (2022). Disponibilizando Dados sobre Resultados Financeiros de Cias Abertas, Enriquecidos com Proveniencia para a OBInvest https://doi.org/10.5281/zenodo.7110653

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7114963.svg)](https://doi.org/10.5281/zenodo.7114963)
