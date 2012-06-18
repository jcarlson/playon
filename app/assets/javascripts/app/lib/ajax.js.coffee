Spine.Model.Ajax.Extensions =
  
  findOrFetch: (id) ->
    try
      result = @find id
    catch e
      result = new @(id:id)
      setTimeout (-> result.ajax().reload()), 0
    result