class BackboneHackaton.Routers.PollsRouter extends Backbone.Router
  initialize: (options) ->
    @polls = new BackboneHackaton.Collections.PollsCollection()
    @polls.reset options.polls

  routes:
    "new"      : "newPoll"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newPoll: ->
    @view = new BackboneHackaton.Views.Polls.NewView(collection: @polls)
    $("#polls").html(@view.render().el)

  index: ->
    @view = new BackboneHackaton.Views.Polls.IndexView(polls: @polls)
    $("#polls").html(@view.render().el)

  show: (id) ->
    poll = @polls.get(id)

    @view = new BackboneHackaton.Views.Polls.ShowView(model: poll)
    $("#polls").html(@view.render().el)

  edit: (id) ->
    poll = @polls.get(id)

    @view = new BackboneHackaton.Views.Polls.EditView(model: poll)
    $("#polls").html(@view.render().el)
