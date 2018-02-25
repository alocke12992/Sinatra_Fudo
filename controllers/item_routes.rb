
class Items < Sinatra::Base

  get "/users/profile/new" do
    erb :'/users/new'
  end

  get "/users/profile/:id/edit" do
    @item = Item.find(params[:id])
    erb :'/users/edit'
  end

  put "/users/profile/:id" do
    item = Item.find(params[:id])
    item.update({title: params[:title], description: params[:description], image: params[:image]})
    redirect "/users/profile"
  end

  get "/users/profile" do
    @items = Item.where(:id => session[:id]).all
    erb :'/users/profile'
  end

  get "/users/home" do
    @allItems = Item.all
    erb :'/users/home'
  end

  post "/users/profile" do
    Item.create(
      id: session[:id],
      title: params[:title],
      description: params[:description],
      image: params[:image]
    )
    redirect "/users/profile"
  end

  delete '/users/profile/:id' do |id|
    Item.find(params[:id]).destroy
    redirect "/users/profile"
  end

end