require 'coffee-script/register'
expect = require('chai').expect

HelloWorld = require '../views/HelloWorld'

describe 'Thing', ->
  it 'does stuff', ->
    expect(true).to.be.ok