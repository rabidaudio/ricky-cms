Backbone = require 'backbone'

module.exports = class Contact extends Backbone.Model
  
  url: =>
    "http://localhost:3000/contacts/#{ @get('id') }"