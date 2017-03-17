require 'sinatra'
require_relative 'controllers/posts_controller.rb'
require_relative 'controllers/users_controller.rb'
require_relative 'controllers/static_controller.rb'
require_relative 'classes/post.rb'



map "/users" do
  use UsersController
end

map "/posts" do
  use PostsController
end


run StaticController
