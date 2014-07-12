
Array::remove = (x) ->
  ats = []
  for item, index in @
    if item is x
      ats.unshift index

  for index in ats
    @splice index, 1

  ats