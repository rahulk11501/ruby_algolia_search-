require 'rubygems'
require 'algoliasearch'
require 'json'

Algolia.init(
  application_id: ENV['ALGOLIA_APP_ID'],
  api_key: ENV['ALGOLIA_ADMIN_API_KEY']
)

index = Algolia::Index.new('T02_push')

file = File.read('experiences.json')
puts file
experiences = JSON.parse(file)
index.add_objects(experiences)

