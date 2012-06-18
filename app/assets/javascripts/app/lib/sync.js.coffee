###
  Provides local storage caching and synchronization for models
  
  On fetch(), items stored locally are immediately returned and a remote request
  is dispatched to get the latest data.
  
  When the remote request returns, the local cache is updated and syncronized.
  
  New members are inserted into the collection; existing members are updated
  if the server resource differs from the local copy (and the local copy is not
  'dirty'); missing members are removed from the local cache.
  
  Optionally, a 'read-only' lock can be enabled, preventing any changes to local
  data until the remote refresh has completed. This helps alleviate situations
  where the local cache has very stale data and it could create a poor user
  experience.
  
  Additionally, the cache can be given an expiry period, after which the cache
  copy is invalidated and must be refreshed from the server. Every effort is
  made to adhere to the standard HTTP caching protocols for this function.
  
###

Spine.Model.Sync =
  extended: ->
    @bind "refresh", @cacheStore
    @one "fetch", @cacheRead
  
  cacheStore: ->
    localStorage[@className] = JSON.stringify(@toJSON())
  
  cacheRead: ->
    @unbind "refresh", @cacheStore
    @refresh localStorage[@className]
    @bind "refresh", @cacheStore