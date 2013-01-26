class BackboneHackaton.Models.Poll extends Backbone.RelationalModel
  paramRoot: 'poll'

  relations: [{
    type: Backbone.HasMany,
    key: 'items',
    relatedModel: 'Item',
    collectionType: 'ItemsCollection',
  }]

  defaults:
    name: null

class BackboneHackaton.Collections.PollsCollection extends Backbone.Collection
  model: BackboneHackaton.Models.Poll
  url: '/api/polls'
