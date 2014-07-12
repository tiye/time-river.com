
module.exports =
  on: (cb) ->
    @cbs = [] unless @cbs?
    unless cb in @cbs
      @cbs.push cb

  emit: (args...) ->
    if @cbs?
      for cb in @cbs
        cb.apply @, args