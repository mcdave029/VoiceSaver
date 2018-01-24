include Facebook::Messenger

# BOT REACTIONS
Bot.on :message do |message_obj|
  Rails.logger.debug "Message Reaction"

  message_obj.sender['id']

  if message_obj.attachments.first['type'] == 'audio'
    message_obj.attachments.first['payload']['url']
  end
end

Bot.on :postback do |message_obj|
  puts
  Rails.logger.debug "Postback Reaction"
end

Bot.on :delivery do |delivery|
  Rails.logger.debug "Delivery Reaction"
end

Bot.on :optin do |message_obj|
  Rails.logger.debug "Optin Reaction"
end

Bot.on :referral do |message_obj|
  Rails.logger.debug "Referral Reaction"
end

Bot.on :message_echo do |message_obj|
  Rails.logger.debug "Message Echo Reaction"
end

Bot.on :account_linking do |message_obj|
  Rails.logger.debug "Account Linking Reaction"
end

Bot.on :read do |message_obj|
  Rails.logger.debug "Read Reaction"
end
