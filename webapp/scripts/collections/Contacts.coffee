Backbone = require 'backbone'

module.exports = class Contacts extends Backbone.Collection

  model: require '../models/Contact'
  
  url: "http://localhost:3000/contacts"