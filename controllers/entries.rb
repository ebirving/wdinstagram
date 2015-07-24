get '/' do
  @entries = Entry.all
  erb :"entries/index"
end

get '/new' do
  erb :"entries/new"
end

get '/:id/edit' do
  @entry = Entry.find(params[:id])
  erb :"entries/edit"
end

get '/:id' do
  @entry = Entry.find(params[:id])
  erb :"entries/show"
end

put '/:id' do
  @entry = Entry.find(params[:id])
  @entry.update(params[:entry])
  redirect "/#{params[:id]}"
end

post '/new' do
  @entry = Entry.create(params[:entry])
  redirect "/#{@entry.id}"
end

delete '/:id' do
  @entry = Entry.find(params[:id])
  @entry.destroy
  redirect "/"
end
