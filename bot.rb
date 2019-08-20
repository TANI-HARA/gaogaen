# encoding: utf-8
require 'discordrb'
bot = Discordrb::Commands::CommandBot.new token: ENV['TOKEN'], client_id: ENV['craiant'] , prefix:""
$voice_state=false


bot.ready do
  bot.game = "ガオヘルプで対応語句を表示"
end

def destroy
  stop_playing
  @bot.voice_destroy(@channel.server.id, false)
  @ws.destroy
end

bot.message(containing: "ガオガエン") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ﾝｶﾞｵｶﾞｴﾝｯ!"
  $voice.play_file("gaogaen.mp3")
  event.voice.destroy
end

bot.message(containing: "ガオガエソ") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ﾝｶﾞｵｶﾞｴﾝｯ!"
  $voice.play_file("gaogaen.mp3")
  event.voice.destroy
end

bot.message(containing: "ﾝｶﾞｵｶﾞｴﾝｯ!") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ﾝｶﾞｵｶﾞｴﾝｯ!"
  $voice.play_file("gogen.mp3")
  event.voice.destroy
end

bot.message(containing: "ガガガガガ") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ｶﾞｶﾞｶﾞｶﾞｶﾞｶﾞｶﾞｶﾞｶﾞ"
  $voice.play_file("ggggg.mp3")
  event.voice.destroy
end

bot.message(containing: "ンエガオガ") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ﾝﾔｧ!ｵﾜｯ!"
  $voice.play_file("owa.mp3")
  event.voice.destroy
end

bot.message(containing: "ガオガオ") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ｶﾞｵｶﾞｵｶﾞｵｶﾞｵｶﾞｵ"
  $voice.play_file("gaogaogao.mp3")
  event.voice.destroy
end

bot.message(containing: "死ね") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ｴｪｪｪｪﾝ……ｴｪｪｪｪﾝ……"
  $voice.play_file("en.mp3")
  event.voice.destroy
end

bot.message(containing: "殺す") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ｴｪｪｪｪﾝ……ｴｪｪｪｪﾝ……"
  $voice.play_file("en.mp3")
  event.voice.destroy
end

bot.message(containing: "ゴミ") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ｴｪｪｪｪﾝ……ｴｪｪｪｪﾝ……"
  $voice.play_file("en.mp3")
  event.voice.destroy
end

bot.message(containing: "カス") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ｴｪｪｪｪﾝ……ｴｪｪｪｪﾝ……"
  $voice.play_file("en.mp3")
  event.voice.destroy
end


bot.message(containing: "ファルコン・パンチ") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ｱｱｱｱｱｱｱｱｱｱ"
  $voice.play_file("aaaaa.mp3")
  event.voice.destroy
end

bot.message(containing: "ガァオガァエン！！！") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ガオﾞガエﾞンﾞ"
  $voice.play_file("gaaaa.mp3")
  event.voice.destroy
end

bot.message(containing: "帰れ") do |event|
  channel = event.user.voice_channel
  bot.voice_connect(channel)
  event.send_message "ｶﾞｯ……"
  $voice.play_file("ga.mp3")
  event.voice.destroy
end



bot.command(:ガオヘルプ) do |event|
  event.respond "```\r以下の語句に反応します。\r・ガオガエン\r・ンエガオガ\r・ガオガエソ\r・ガオガオ\r・ガガガガガ\r・ガァオガァエン！！！\r・ﾝｶﾞｵｶﾞｴﾝｯ!\r・死ね\r・カス\r・ゴミ\r・殺す\r・帰れ\r・ファルコン・パンチ\r※たまに死にます。\r```"
  event.respond "他の所に警察を呼びたいならこちら\rhttps://discordapp.com/api/oauth2/authorize?client_id=535146331778318387&permissions=3147776&scope=bot"
end

bot.run
