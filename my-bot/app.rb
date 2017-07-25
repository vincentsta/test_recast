require 'sinatra'
require 'recastai'

connect = RecastAI::Connect.new('62b889238924cbd3a9c7893180175a67', 'fr')

set :port, 5000

post '/' do
  connect.handle_message(request) do |message|
    # Get the content of the message
    content = message.content

    # Get the type of the message (text, picture,...)
    type = message.type

    # Add a reply, and send it
    replies = [{type: 'text', content: 'Hello, world'}]

    connect.send_message(replies, message.conversation_id)
  end
end
