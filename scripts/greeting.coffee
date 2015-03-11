cronJob = require('cron').CronJob
random = require('hubot').Response::random
d = new Date
hour  = d.getHours() 

getparam = ->
  if hour < 13
   random [
     'おやおや寝坊かい？じゃあ、時速200kmで飛ばせばいい'
     '@yoyaku img me 綾瀬はるか'
     '@yoyaku img me Statham'
     '馬鹿も才能の一つだ。賢いだけが生き様じゃない。'
     'ちゃーす'
     ]
  else
    random [
      '飯食ったか？'
      '@yoyaku hiru'
      '@yoyaku img me ステイサム'
      '@yoyaku img me スタミナ太郎'
      'ちゃーーーす'
      ]
		
module.exports = (robot) ->
  cronjob = new cronJob('0 0,15,30,45 7,8,9,18-23 * * 0-6', () =>
    robot.send room:"#general",getparam()
  )
  cronjob.start()
  