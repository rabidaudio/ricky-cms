
Backbone = require 'backbone'
$ = window.jQuery
Backbone.$ = $

HelloWorldView = require './views/HelloWorld'


$(document).ready ->

  talkers = new Backbone.Collection [ {text: 'just ship it'}, {text: 'hello bob'}, {text: 'kittens meow'} ]

  talkers.forEach (e,i,a) ->
    t= new HelloWorldView e
    $('#app').append t.el
    t.speak()