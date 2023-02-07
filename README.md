# drecvm - Providing Data on Financial Results of Public Companies Enriched with Provenance for OBInvest.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7110653.svg)](https://doi.org/10.5281/zenodo.7110653)

## Licença
THis project is licenced uder Apache 2.0 - details in [LICENSE](LICENSE).

## Abstract 

Financial Literacy (FL) initiatives, aimed at young people in formal or informal learning spaces, are defended and implemented in several countries, being encouraged since 2005 by the Organization for Economic Co-operation and Development (OECD). In Brazil, the teaching and learning process in several areas has been stimulated through Academic Competitions generally called Knowledge Olympics, which are essentially student contests that aim to encourage, find talent and awaken interest in the field knowledge presented in the competition. It was precisely for this purpose that the Brazilian Investment Olympics (OBInvest) was born, aiming to democratize access to education and promote reflections on economic and financial issues, through a FL perspective for high school students from all over the country. One of OBInvest's objectives is to help boosting the development of computational tools, aiming to provide easier access to fundamental data for decision-making in the field of finance. However, from the tools developed by OBInvest, it was noted that the creation of new educational tools would be enhanced through the use of datasets enriched with provenance and aligned with FAIR principles. This work aims to offer a computational strategy based on data science techniques, which is easy to use and also provides curated data series through a reproducible pipeline, using open data on financial reports from publicly listed Brazilian companies, provided by the Brazilian Security and Exchange Commission, called Comissão de Valores Mobiliarios (CMV).

### How Execute

#### Software requirements:

Only Docker container!

#### Tested environments:


Env | Result
---------- | ---------
Windows 10 + Docker V19.03.8 | OK
Ubuntu 22.04 + Docker V20.10.14 | OK

#### Fast Execution (accessing Docker Hub directly)
1 - Run image automatically downloading the last version published in docker hub
```
$ docker run -p 8888:8888 obinvest/drecvm
```
2 - Open your browser in the same host machine and access jupyter notbook URL

http://127.0.0.1:8888

### Running locally from scratch
1 - Clone the original repository in github
```    
$ git clone https://github.com/OBInvest/drecvm.git --branch=v2.0
```  
2 - open a terminal an run the command that builds a new image from the existing docker file in repository root path that you alread cloned
```    
$ docker build -t obinvest/drecvm:2.0 .
```    
3 - Execute this new image, that will create a new runnig container already executing jupter
```
$ docker run -p 8888:8888 obinvest/drecvm:2.0
```
4 - Open your browser in the same host machine and access jupyter notbook URL

http://127.0.0.1:8888

## Autores
- **Gilberto Gil F. Gomes Passos** - [@gilbertogilfgp](https://github.com/gilbertogilfgp)
- **Saulo A. Almeida** - [@sauloaalmeida](https://github.com/sauloaalmeida)
- **Valquire da S. de Jesus** - [@Valquire](https://github.com/Valquire)
- **Sergio Serra**
- **Jorge Zavaleta** - [@Zavaleta](https://github.com/Zavaleta)

## How is organized this repositorys
data
- [`data`](data): directory with raw datasets dowload from CVM in 09/16/2022.
- [`DRE-CVM-PROV.png`](DRE-CVM-PROV.png): provenance output in png format.
- [`DRE-CVM-PROV.ttl`](DRE-CVM-PROV.ttl): provenance output in DRF (Turtle) format.
- [`DRE-CVM-PROV.xml`](DRE-CVM-PROV.png): provenance output in xml format.
- [`Dockerfile`](Dockerfile): arquivo utilizado na criação da imagem Docker.
- [`LICENSE`](LICENSE): licence used in this project.
- [`README.md`](README.md): this readme file.
- [`paper-dre_cmv.pdf`](paper-dre_cmv.pdf): pdf paper.
- [`cmv-dre-explore.knwf`](cmv-dre-explore.knwf): knime file with used workflow during initial exploration of datasets.
- [`data-dictionary-obinvest-dre-dataset.csv`](data-dictionary-obinvest-dre-dataset.csv): data dictionary of OBInvest dataset.
- [`drecvm.ipynb`](drecvm.ipynb):  python notebook python that creates OBInvest Dataset and generaterovenance during runtime.
- [`environment.yml`](environment.yml): dependencies used in yml file.
- [`obinvest-dre-dataset.csv`](obinvest-dre-dataset.csv): OBInvest Dataset file generated during runtime.

## How to Cite
Se você utilizar este repositório em seu trabalho, por favor, cite o artigo:

>Gilberto Gil F. Gomes Passos, et al. (2023). Providing Data on Financial Results of Public Companies Enriched with Provenance for OBInvest https://doi.org/10.5281/zenodo.7110653

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7110653.svg)](https://doi.org/10.5281/zenodo.7110653)
