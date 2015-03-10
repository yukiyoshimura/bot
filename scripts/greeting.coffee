cronJob = require('cron').CronJob
random = require('hubot').Response::random

module.exports = (robot) ->
  cronjob = new cronJob('0 0,15,30 7,8,9,18 * * 0-6', () =>
    robot.send room:"#general",random ['おやおや寝坊かい？じゃあ、時速200kmで飛ばせばいい。','ガッキー','@yoyaku img me ステイサム','馬鹿も才能の一つだ。賢いだけが生き様じゃない。','ちゃーす']
  )
  cronjob.start()
  