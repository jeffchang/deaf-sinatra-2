get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  if params["user_input"] == params["user_input"].upcase
    redirect '/?grandma=Not since 1983!'
  elsif params["user_input"] == "I love you."
    redirect '/?grandma=I love you too! Have a nice day!'
  else
    redirect '/?grandma=Speak up, kiddo!'
  end
end

# http://www.sinatrarb.com/intro#Browser%20Redirect redirect and since we are
# on the same server that we were originally do not need first portion of the
# web url (why we can start with /) We know based on research that after the =
# in web url is actually what grandma says on the webpage so that is just what
# we set up
