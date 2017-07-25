require 'recastai'

client = RecastAI::Client.new('62b889238924cbd3a9c7893180175a67', 'fr')

response = client.request.converse_text('hello')
puts response.action.slug if response.action
puts response.intent.slug if response.intent
reply = response.reply
puts reply
