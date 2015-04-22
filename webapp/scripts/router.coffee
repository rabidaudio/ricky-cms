Backbone = require 'backbone'

TemplateView = require './views/Template'

Contact = require './models/Contact'
Contacts = require './collections/Contacts'

module.exports = class Router extends Backbone.Router

  routes:
    "": "contacts",
    "404": "not_found"

  contacts: =>
    #get data with appopriate filters
    #return new Table view with an attached collection
    # c= new Contact({id: 1}).fetch()
    # console.log c
    window.c = new Contacts

  not_found: => new TemplateView el: '#app', template: require('./templates/404')