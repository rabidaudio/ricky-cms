Backbone = require 'backbone'

module.exports = class HelloWorldView extends Backbone.View

  tagName: 'voice-player'

  attributes: 
    autoplay: false,
    text: 'Hello World'

  initialize: => @render()

  render: => @parent.append el if @parent?; return @

  speak: => @el.speak()