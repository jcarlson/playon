class App.Event extends Spine.Model
  @configure 'Event', 'name', 'scheduled_date', 'publisher_id', 'publisher_name', 'activity', 'broadcast'
  @extend Spine.Model.Ajax
  @extend Spine.Model.Ajax.Extensions
  
  @page: 1
  
  @nextPage: ->
    @fetch data: $.param(page: ++@page)