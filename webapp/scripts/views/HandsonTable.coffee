Backbone = require 'backbone'
_ = require 'underscore'

module.exports = class HandsonTableView extends Backbone.View

  initialize: =>
    @render()
    # @listenTo @model, 'change', @render

  data: [
      ['', 'Maserati', 'Mazda', 'Mercedes', 'Mini', 'Mitsubishi'],
      ['2009', 0, 2941, 4303, 354, 5814],
      ['2010', 3, 2905, 2867, 412, 5284],
      ['2011', 4, 2517, 4822, 552, 6127],
      ['2012', 2, 2422, 5399, 776, 4151]
    ]

  render: =>
    @hot = new window.Handsontable @el, {
      data: @data,
      minSpareRows: 1,
      colHeaders: true,
      contextMenu: true,
      afterChange: @handleChange
    }
    return @

# changes is a 2D array containing information about each of the edited cells [ [row, prop, oldVal, newVal], ... ].
# source is one of the strings: "alter", "empty", "edit", "populateFromArray", "loadData", "autofill", "paste".
  handleChange: (changes, source) =>
    console.log [changes, source]

  transformCollection: (collection) =>
    return [] if collection.length <= 0
    data = []
    #column headers
    data[0] = collection.first().keys()
    #data
    data.push item.values() for item in collection.models
    return data