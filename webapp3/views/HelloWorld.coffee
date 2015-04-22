
Backbone = require 'backbone'

module.exports = class HelloWorldView extends Backbone.View

  tagName: 'voice-player'

  attributes: 
    autoplay: false,
    text: 'Hello World'
  

  events: 
    'onend': 'logit'
  

  speak: => @el.speak()

  logit: => console.log "Meow!"