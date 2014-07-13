
mapping = require './mapping'
config = require '../config'

canvas = document.querySelector('canvas')
canvas.width = innerWidth
canvas.height = innerHeight

ctx = canvas.getContext '2d'
ctx.font = '19px Optima'
ctx.fillStyle = 'white'

mapping.on ->
  mappingList = mapping.get()
  ctx.clearRect 0, 0, innerWidth, innerHeight
  for object in mappingList
    if object.type is 'spot'
      ctx.globalAlpha = object.a
      r = config.r
      ctx.fillRect object.x, object.y, r, r
    else if object.type is 'time'
      ctx.fillStyle = 'white'
      ctx.globalAlpha = object.a
      ctx.fillText object.text, object.x, object.y