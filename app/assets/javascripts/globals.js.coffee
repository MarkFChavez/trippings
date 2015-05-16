class @Globals
  self = this

  @initialize_material_design: ->
    $.material.init()

  @pending: ->
    $(".pending").on "click", (e) ->
      e.preventDefault()
      alert "work in progress"

  @init: ->
    self.initialize_material_design()
    self.pending()

$ ->
  Globals.init()

$(document).on "page:change", ->
  Globals.init()

$(document).on "page:load", ->
  Globals.init()
