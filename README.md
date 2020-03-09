# School management v1.0.0 - Api

### índice de conteúdo
---

* [Setup do Projeto](#setup-do-projeto)
* [Dependências](#dependências)


## Setup do Projeto
------------------------

### Dependências

 - Ruby v2.6.4
     - Caso não tenha Ruby intalado em sua máquina, recomendamos o uso do [RVM](https://rvm.io/) para a instalação do mesmo.
 - Rails v6.0.2
 - Postgress
 - Git

### Importante

**Configuração do Gemset**

Dentro da pasta do projeto, crie os arquivos `.ruby-version` e `.ruby-gemset` e depois entre novamente na pasta para carregar as novas configurações.
```bash
$ echo "ruby-2.6.4" > .ruby-version && echo "school-management" > .ruby-gemset
$ cd .
```

**Instalação das dependências**

A ferramenta `bundle` instalará todas as gems que foram definidas no Gemset do projeto.
```bash
$ gem install bundle
$ bundle install
```

Por fim, crie o banco de dados, rode as migrations e popule o mesmo.

```bash
$ rails db:create db:migrate db:seed
```

**Start do servidor**
```bash
$ rails s
```

