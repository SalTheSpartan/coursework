class UsersController < Sinatra::Base

  get "" do
    "INDEX"
  end

  get "/new" do
    "NEW"
  end

  get "/:id/edit" do
    "EDIT"
  end

  get "/:id" do
    "SHOW"
  end

  post "/" do
    "CREATE"
  end

  put "/:id" do
    "UPDATE"
  end


  delete "/:id" do
    "DELETE"
  end

end
