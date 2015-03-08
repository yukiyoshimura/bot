module.exports = (robot) ->
  robot.hear /foo/i, (msg) ->
    msg.send "bar"

  robot.respond /hoge/i, (msg) ->
    msg.send "fuga"
	