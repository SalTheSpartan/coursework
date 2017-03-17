class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") } 

  get "/" do

    # dummy data for testing
    @posts = $posts

    erb :index
  end

  get "/new" do
    erb :new
  end

  get "/:id" do

    id = params[:id].to_i

    # dummy data
    @post = $posts[id]

    erb :show
  end

  post "/" do



  end

end