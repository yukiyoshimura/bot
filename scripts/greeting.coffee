cronJob = require('cron').CronJob
random = require('hubot').Response::random

module.exports = (robot) ->
  cronjob = new cronJob('0 0 8 * * 0-6', () =>
    robot.send room:"#general",'おはよう ' + random ['おやおや寝坊かい？じゃあ、時速200kmで飛ばせばいい。','ガッキー']
  )
  cronjob.start()