# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
jQuery ($) ->
  $('a.add-color').on 'click', (e) ->
    div = $('<div class="color-input-div"></div>')
    $('<input>').prop(
      name: 'product[colors][]'
      type: 'text'
      )
      .appendTo(div)
    div.insertAfter('.color-input-div:last')
    e.preventDefault()
  $('a.remove-color').on 'click', (e) ->
    idx = e.currentTarget.className.split(' ').pop()
    $(".color-input-div.#{idx}").remove()
    e.preventDefault()
