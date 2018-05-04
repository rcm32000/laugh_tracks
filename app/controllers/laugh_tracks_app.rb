class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    erb :"comedians/index"
  end

  get '/specials' do
    @specials = Special.all
    erb :"specials/index"
  end
end
