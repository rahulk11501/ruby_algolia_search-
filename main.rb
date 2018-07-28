require 'rubygems'
require 'algoliasearch'

Algolia.init(
  application_id: ENV['ALGOLIA_APP_ID'],
  api_key: ENV['ALGOLIA_ADMIN_API_KEY']
)

index = Algolia::Index.new('T02_push')

experiences = [{"id"=>1, "title"=>"Cycle with a Storytelling Session"}, {"id"=>2, "title"=>"Pedal through the Night"}]

index.add_objects(experiences)
