# README

- Ruby version is `3.0.0`
- Rails version is `6.1.4`
- Installation process
```bigquery
$ brew update
$ brew install ruby-build
$ brew install rbenv

$ rbenv install 3.0.0
$ rbenv global 3.0.0
$ ruby -v
ruby 3.0.0
$ gem install bundler
$ bundle install
$ rails db:create
$ rails db:migrate
```
- To run with command line
```bigquery
$ rake batting:load_data # it may take sometime to load data
$ rake batting:get_average # it will show the average per year
```
- to run on Web interface
```bigquery
$ rails server
```
http://localhost:3000/ to run the project on web browser


