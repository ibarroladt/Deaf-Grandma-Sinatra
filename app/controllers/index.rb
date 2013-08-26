get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end


post '/grandma' do
  grandma(params[:grandma])
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
end



def grandma(args)
 "grandma #{args}"
end
