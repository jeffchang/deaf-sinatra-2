get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  if params["user_input"] == params["user_input"].upcase
    @words = 'Not since 1983!'
  elsif params["user_input"] == "I love you."
    @words = 'I love you too! Have a nice day!'
  else
    @words = 'Speak up, kiddo!'
  end
  erb :response
end

# http://www.sinatrarb.com/intro#Browser%20Redirect redirect and since we are
# on the same server that we were originally do not need first portion of the
# web url (why we can start with /) We know based on research that after the =
# in web url is actually what grandma says on the webpage so that is just what
# we set up
