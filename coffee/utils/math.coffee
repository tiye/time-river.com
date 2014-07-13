
time = require './time'
config = require '../config'

exports.blink = (x, y) ->
  now = time.unix()
  phase = - (now/config.d) + (y/50)
  phase += Math.sin (x / 80)
  fluctuation = 0.7 + (Math.sin phase) * 0.3

  fluctuation