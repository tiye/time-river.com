
time = require './time'
config = require '../config'

exports.blink = (x, y) ->
  now = time.unix()
  phase = y / 60
  phase -= ((now / 2) % config.d / config.d) * 2 * Math.PI
  phase += Math.sin (x / 80)
  fluctuation = 0.7 + (Math.sin phase) * 0.3

  fluctuation