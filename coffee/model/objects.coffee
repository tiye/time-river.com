
events = require '../utils/events'
number = require '../utils/number'
time = require '../utils/time'

objects = []

module.exports = model =
  on: events.on
  emit: events.emit

do addSpot = ->
  delay = number.random 200, 600
  time.delay delay, addSpot

  spot =
    type: 'spot'
    point: number.point()
    start: time.unix()

  objects.push spot
  model.emit spot

addTime = ->
  time.delay 1000, addTime

  timestamp =
    type: 'time'
    point: number.point()
    start: time.unix()

  objects.push timestamp
  model.emit timestamp

time.startAtIntegral addTime

do clearObjects = ->
  now = time.unix()
  for object in objects
    if (now - object.start) > 10000
      objects.remove object
      @emit 'leaving', object