require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  def include_developer(object)
    object.to_json(
    include: {
      developer: {
        only: [
          :developer_name
        ]
      }
    }
  )
  end

  def find_developer_id(params)
    developer = Developer.find_by(developer_name: params[:developerName])
    developer.id
  end
  
  get '/developers' do
    developers = Developer.all
    developers.to_json
  end
  
  post '/developers' do
    developer = Developer.create(params)
    developer.to_json
  end
  
  delete '/developers/:id' do
    developer = Developer.find(params[:id])
    developer.destroy
    developer.to_json
  
  end
  
  get "/entries" do
    include_developer(Entry.all)
  end

  post '/entries' do 
    entries = Entry.create(
      API: params[:API], Description: params[:Description], Link: params[:Link], Category: params[:Category],developer_id: find_developer_id(params))
      include_developer(entries)
  end

  delete '/entries/:id' do
    entries = Entry.find(params[:id])
    entries.destroy
    entries.to_json
  end

end


