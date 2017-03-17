class UsersController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  get "/" do

    # dummy data for testing
    @users = $users

    erb :user_index
  end

  get "/new" do
    erb :user_new
  end

  get "/:id" do

    id = params[:id].to_i

    # dummy data
    @user = $users[id]

    erb :user_show
  end

  post "/" do



  end

end
