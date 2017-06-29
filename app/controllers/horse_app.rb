class HorseApp < Sinatra::Base
  set :method_override, true

  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/jockeys/:id' do |id|
    @jockey = Jockey.find(id)
    erb :"jockeys/show"
  end

  get '/horses/new' do
    erb :"horses/new"
  end

  post '/horses' do
    horse = Horse.create(params[:horse])
    redirect "/horses/#{horse.id}"
  end

  get '/horses/:id' do |id|
    @horse = Horse.find(id)
    erb :"horses/show"
  end

  get '/horses/:id/edit' do |id|
    @horse = Horse.find(id)
    erb :"horses/edit"
  end

  put '/horses/:id' do |id|
    horse = Horse.find(id)
    horse.update(params[:horse])
    redirect "/horses/#{id}"
  end

  delete '/horses/:id' do |id|
    Horse.destroy(id)
    redirect '/horses'
  end
end
