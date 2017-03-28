require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
    erb(:index)
end

get('/name') do
  @@my_pet = Tamagotchi.new(params.fetch('name'))
  erb(:new)
end

get('/feed_food') do
  @food_level = @@my_pet.feed_food
  erb(:new)
end

  get('/do_some_activity') do
    @activity_level = @@my_pet.do_some_activity
    erb(:new)
end

  get('/resting') do
    @sleep_level = @@my_pet.resting
    erb(:new)
end
