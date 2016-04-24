get '/howls' do
	@howls = Howl.all 			
	erb :"howls/index"
end

#new
get '/howls/new' do 
  @howl = Howl.new
  @wolves = Wolf.all 
  erb :"howls/new"
end

#create
post '/howls' do
  @howl = Howl.new(params)
  if @howl.save
    redirect to('/howls')
  else
    erb :"howls/new"
  end
end


