 get '/' do
  @grandma = params[:response_from_grandma]
  # Look in app/views/index.erb
  erb :index
end


post '/grandma' do
  # Redirects to index with the specified parameters (after the '?'').
  if request.xhr?
    @grandma = get_response(params[:user_input])
    erb :_grandma_response, layout: false
  else
  redirect to ("/?response_from_grandma=#{get_response(params[:user_input])}")
  end
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
end

