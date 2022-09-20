[![Contributors][contributors-shield]][contributors-url]
[![MIT License][license-shield]][license-url]

# drecvm
Repositório utilizado para o trabalho final da discplina Fundamentos de Data Science no Porograma de pós graduação em Informática (PPGI) da da UFRJ. 

==============================================
Execucao rapida (diretamente do Docker Hub)
==============================================
1 - Instalar o Docker

2 - Rodar o docker com os dados da imagem ja publicada no docker hub

docker run -i -t -p 8888:8888 obinvest/drecvm:0.1

3 - Abrir no navegador da maquina host e acessar a URL do jupyter notbook

http://127.0.0.1:8888

==============================================
Executando localmente from scratch
==============================================

1 - Instalar o Docker

2 - Abrir o terminal e rodar o comando que cria uma nova imagem a partir do docker file desse diretorio config
    
docker build -t trabalhofds/fds:0.1 .
    
3 - Executar a imagem e com isso criar o container e rodando o jupter no diretorio que ele ja baixou o notebook do trabalho

docker run -i -t -p 8888:8888 trabalhofds/fds:0.1 

4 - Abrir no navegador da maquina host e acessar a URL do jupyter notbook

http://127.0.0.1:8888

5 - Ir para o diretório do trabalho no jupyter, abrir o notebook e executar

==============================================
Outros Comandos importantes
==============================================

Imagens
-----------
I - Listar as imagens configuradas no docker

docker images

II - Remover uma imagem existente

docker rmi <ID-IMAGEM>

Container
-----------
I - Listar todos os containers do docker (inclusive os inativos)

docker ps -a

II - Remover um container inativo

docker rm <ID-CONTAINER>

III - Iniciar um container desativado

docker start -i <ID-CONTAINER>

IV - Parar um container ativo

docker stop <ID-CONTAINER>

Docker hub
-----------
I - Retaggeando uma imagem local para preparar o push para o docker hub

docker tag <USER-LOCAL>/<NOME-LOCA>:<TAG-LOCAL>1.0 <DOCKE-USER>/<REPOSITORIO>:<TAG>

EX: docker tag trabalhofds/fds:0.1 sauloandrade/fds:0.1

II - Verificando se esta logado no docker hub

docker login

III - Fazendo push da imagem para o Docker hub (pode ser necessario ter que retaggear anterioremente) 

docker push <DOCKE-USER>/<REPOSITORIO>:<TAG>

EX: docker push sauloandrade/fds:0.1
