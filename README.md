
# BIG DATA LAB

Ambiente para estudo dos principais frameworks big data em docker.
<br> Esse setup vai criar dockers com os frameworks HDFS, HBase, Hive, Presto, Spark, Jupyter, Hue, Mongodb, Metabase, Nifi, kafka, Mysql e Zookeeper com a seguinte arquitetura:
<br>  

## SOFTWARES NECESSÁRIOS
#### Para a criação e uso do ambiente vamos utilizar git e docker
   *  [Instalação do git](https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git)

## SETUP
*OBS: Esse passo deve ser realizado apena uma vez. Após o ambiente criado, utilizar o docker-compose para iniciar os containers como mostrado no tópico INICIANDO O AMBIENTE*

#### Criação do diretório docker:
*OBS: A criação do diretório é importante para os mapeamentos necessários*
          
   * No Linux:
      * Criar o diretório na home do usuário
        ex: /home/user/docker

### No terminal, no diretorio docker-bigdata_lab, executar o docker-compose
          docker-compose up -d

### Verificar imagens e containers
         docker image ls

### Verificar containers
         docker container ls

## SOLUCIONANDO PROBLEMAS 

### Parar um containers
         docker stop [nome do container]      

### Parar todos containers
         docker stop $(docker ps -a -q)
  
### Remover um container
         docker rm [nome do container]

### Remover todos containers
         docker rm $(docker ps -a -q)         

### Dados do containers
         docker container inspect [nome do container]

### Iniciar um container
         docker-compose up -d [nome do container]

### Iniciar todos os containers
         docker-compose up -d 

### Acessar log do container
         docker container logs [nome do container] 

### Copiar dados de um container para um diretório local
         docker cp <container>:<dir-dest> <dir-local>  

## Acesso WebUI dos Frameworks
 
* HDFS *http://localhost:50070*
* Hue *http://localhost:8888*
* Spark *http://localhost:4040*

## Acesso por shell

   ##### HDFS

          docker exec -it datanode bash   

## Acesso JDBC

   ##### MySQL
          jdbc:mysql://database/employees

   ##### Hive

          jdbc:hive2://hive-server:10000/default

## Usuários e senhas

   ##### Hue
    Usuário: admin
    Senha: admin

   ##### Metabase
    Usuário: bigdata@class.com
    Senha: bigdata123 

   ##### MySQL
    Usuário: root
    Senha: secret
   
   ##### MongoDB
    Usuário: root
    Senha: root
    Authentication Database: admin

## Documentação Oficial

* https://spark.apache.org/
* https://hadoop.apache.org/
* https://hive.apache.org/
* https://gethue.com/
* https://www.docker.com/

## Creditos
* https://github.com/fabiogjardim
* https://github.com/big-data-europe