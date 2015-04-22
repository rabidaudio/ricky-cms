Backbone = require 'backbone'
$ = window.jQuery
Backbone.$ = $
require('backbone-jsonapi')(Backbone, require 'underscore') #gives good parse methods

Router = require './router'

$(document).ready ->

  router = new Router

  router.navigate('404', {trigger: true, replace: false}) unless Backbone.history.start({pushState: false})