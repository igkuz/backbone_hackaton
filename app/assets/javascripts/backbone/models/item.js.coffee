class BackboneHackaton.Models.Item extends Backbone.RelationalModel
  paramRoot: 'item'

  defaults:
    name: null

class BackboneHackaton.Collections.ItemsCollection extends Backbone.Collection
  model: BackboneHackaton.Models.Item
  url: '/api/items'
