require 'sinatra'
require_relative 'controllers/posts_controller.rb'
require_relative 'controllers/users_controller.rb'
require_relative 'controllers/static_controller.rb'
require_relative 'classes/post.rb'
require_relative 'classes/user.rb'

# dummy data
$posts = [
  Post.new("Post 1" , "Some post text"),
  Post.new("Post 2" , "Some post text 2")
]

$users = [
  User.new("Salman" , "Khan"),
  User.new("Osvaldo" , "Caliari")
]

map "/users" do
  use UsersController
end

map "/posts" do
  use PostsController
end

run StaticController
