cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronjob = new cronJob('0 0 8 * * 0-6', () =>
    envelope = room: "#general"
    robot.send envelope, "ohayou"
  )
  cronjob.start()