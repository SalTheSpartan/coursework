class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    # sets the view directory correctly
    set :views, Proc.new { File.join(root, "views") }

    $posts = [
      Post.new("Post1" , "Some Post text"),
      Post.new("Post2" , "Some Post text 2")
    ]




  get "/" do

    @posts = $posts
    # dummy data for testing

    erb :index
  end

  get "/new" do

    erb :new
  end

  get "/:id" do

    # dummy data for testing
    @post = $posts[id]

    erb :show
  end

  post "/" do
    "CREATE"
  end

end
