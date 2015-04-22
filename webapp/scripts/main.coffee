Backbone = require 'backbone'
$ = window.jQuery
Backbone.$ = $

HelloWorldButtonView = require './views/HelloWorldButton'


$(document).ready ->

  talkers = new Backbone.Collection [ {text: 'just ship it'}, {text: 'hello bob'}, {text: 'kittens meow'} ]

  talkers.forEach (e,i,a) ->
    $('#app').append "<div id='hw-#{i}'></div>"
    t = new HelloWorldButtonView {model: e, el: "#hw-#{i}" }