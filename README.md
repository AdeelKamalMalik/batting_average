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
$ rake batting:load_data # it may take sometime to load data
$  rake batting:get_average # it will show the average per year
```


