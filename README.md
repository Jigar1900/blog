# README

- firstly create the Application Blog
    rails new BLOG -d postgresql

- second create the article controller
  in that controller just add crud operation

- after that install elasticsearch deb file for your system
    sudo apt-get update && sudo apt-get install elasticsearch

- second check the status of your elastic search
    sudo service elasticsearch status

- then add gem to your gem file
    gem 'elasticsearch-model'
    gem 'elasticsearch-rails'

- and add this lines to your model articles
    require 'elasticsearch/model'
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
