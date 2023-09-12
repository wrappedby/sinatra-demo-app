require "dotenv/load"
require "sinatra"

get "/" do
  erb :index
end

get "/info" do
  erb :info
end
