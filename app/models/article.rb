require 'elasticsearch/model'

class Article < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.search(query)
    Article.where('title LIKE ? OR text LIKE ?',"%#{query}%","%#{query}%")
  end
end
