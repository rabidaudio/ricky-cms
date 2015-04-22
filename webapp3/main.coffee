
Backbone = require 'backbone'

HelloWorldView = require './views/HelloWorld'


talkers = new Backbone.Collection [ 'ohai', 'hello world', 'kittens meow' ]

talkers.forEach (e,i,a) ->
  t = new HelloWorldView text: e
  $('.app').append t
  t.speak()