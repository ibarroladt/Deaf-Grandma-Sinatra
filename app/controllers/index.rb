get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end


post '/grandma' do
  
  redirect to ("/?grandma=#{grandma(params[:user_input])}")
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
end



def grandma(args)
  if args.upcase == args
    "What do you mean, '#{args}'?! Kids these days!"
  else
    "Speak up, kiddo!"
  end
end
