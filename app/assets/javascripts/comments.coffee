# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('li:gt(5):last').fadeOut();

$(document).on 'click', '.clik', (e) ->
     e.preventDefault()
     $(this).parent().find('.delbtn').toggle()
     $('.delbtn').not($(this).parent().find('.delbtn')).hide()
     e.stopPropagation()

$(document).on 'click', ->
  if $('.delbtn').show()
    $('.delbtn').hide()
