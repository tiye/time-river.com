
events = require '../utils/events'
time = require '../utils/time'

objects = require '../model/objects'

leaving = []

images = []

module.exports = mapping =
  on: events.on
  emit: events.emit

  get: ->
    images

catchLeaving = (item) ->
  item.end = time.unix()
  leaving.push item
  time.delay 1000, =>
    leaving.remove item

objects.on (type, item) ->
  if type is 'leaving'
    catchLeaving item

  images = []

  mapping.emit()