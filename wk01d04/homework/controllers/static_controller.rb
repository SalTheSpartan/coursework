class StaticController < Sinatra::Base

  get "/" do
    "Homepage"
  end

  get "/:id" do
    "SHOW #{params[:id]}"
  end

end