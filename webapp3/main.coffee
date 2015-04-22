
Backbone = require 'backbone'

HelloWorldView = require './view/HelloWorldView'


talkers = new Backbone.Collection [
  'ohai',
  'hello world',
  'kittens meow'
]

talkers.forEach (e,i,a)->
  t = new HelloWorldView text: e
  $('.app').append t
  t.speak()