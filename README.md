# RubyDesignPatterns
Ejemplos de patrones de diseño en Ruby

<div id='index'/>
## Índice

1. [Entorno](#seccion01)
2. [Instalación](#seccion02)
3. [Patrón 1: Template](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Template/README.md)

<div id='seccion01'/>
## Entorno

[Volver al índice](#index)

1. Ruby 2.3.3
2. Ubuntu 16.04.1 LTS

<div id='seccion02'/>
## Instalación

[Volver al índice](#index)

Para instalar ruby se utilizará **rbenv** que permitirar gestionar distintas versiones de ruby y utilizar la más conveniente.

```bash
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
rbenv install 2.3.3
rbenv global 2.3.3
ruby -v
```
