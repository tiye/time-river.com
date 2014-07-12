
exports.random = (n, base) ->
  x = Math.random() * n
  if base?
    x += base
  Math.floor x

exports.point = ->
  x = @random innerWidth
  y = @random innerHeight
  {x, y}
