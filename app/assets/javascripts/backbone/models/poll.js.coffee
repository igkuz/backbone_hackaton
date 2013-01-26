class BackboneHackaton.Models.Poll extends Backbone.Model
  paramRoot: 'poll'

  defaults:
    name: null

class BackboneHackaton.Collections.PollsCollection extends Backbone.Collection
  model: BackboneHackaton.Models.Poll
  url: '/api/polls'
