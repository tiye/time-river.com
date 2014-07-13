
events = require '../utils/events'
number = require '../utils/number'
time = require '../utils/time'
config = require '../config'

objects = []

module.exports = model =
  on: events.on
  emit: events.emit
  get: ->
    objects

do addSpot = ->
  spot =
    type: 'spot'
    position: number.point()
    start: time.unix()
    duration: number.random 10000, 10000

  objects.push spot
  if objects.length < 10 ** 3
    addSpot()

timestamp =
  type: 'time'
  text: time.compact()
  position: {x: 200, y: 130}
  start: time.unix()
objects.push timestamp

addTime = ->
  time.delay 1000, addTime
  timestamp.text = time.compact()

  model.emit timestamp

time.startAtIntegral addTime
