json.content    @message.content
json.image      @message.image.url
json.created_at @message.created_at.to_s
json.user_name @message.user.name
#idもデータとして渡す
json.id @message.id