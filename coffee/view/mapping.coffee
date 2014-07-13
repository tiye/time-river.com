
events = require '../utils/events'
time = require '../utils/time'
math = require '../utils/math'

objects = require '../model/objects'

leaving = []

images = []

module.exports = mapping =
  on: events.on
  emit: events.emit

  get: ->
    images

updateImages = ->
  images = []
  for object in objects.get()
    item =
      type: object.type
      x: object.position.x
      y: object.position.y
      s: object.start
      text: object.text
    item.a = math.blink item.x, item.y
    images.push item

do paint = ->
  requestAnimationFrame paint
  updateImages()
  mapping.emit()