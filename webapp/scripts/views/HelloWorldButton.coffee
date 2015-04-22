Backbone = require 'backbone'

HelloWorldView = require './HelloWorld'

module.exports = class HelloWorldButtonView extends Backbone.View

  template: require '../templates/HelloWorldButton'

  initialize: => @render()

  render: =>
    @$el.html @template(@model.attributes)
    @playback = new HelloWorldView { parent: @$('.playback-container'), attributes: @model.attributes }
    return @

  events: 
    'click .playbutton': 'play'

  play: => @playback.speak()
