
exports.delay = (time, cb) ->
  setTimeout cb, time

exports.compact = ->
  (new Date).toLocaleTimeString()

exports.unix = ->
  (new Date).getTime()

exports.startAtIntegral = (cb) ->
  time = (new Date).getTime()
  diff = time % 1000
  if diff is 0
    cb()
  else
    delay = 1000 - diff
    @delay delay, cb