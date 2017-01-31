# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:render turbolinks:visit', ->
  console.log 'hello'

$(document).on 'turbolinks:load ', ->
  window.jobsFormPage = $('#jobs.new, #jobs.edit, #jobs.create')[0]?
  if window.jobsFormPage
    descriptionToggle()
    unless $('.cm-s-paper')[0]
      editor = new SimpleMDE
        element: document.getElementById('job_description')
        indentWithTabs: false
        forceSync: true
        autofocus: true


descriptionToggle = ->
  $linkGroup = $('body #link_group')
  $linkRadio = $('body #description_link')
  $descriptionGroup = $('body #description_group')
  $descriptionRadio = $('body #description_description')

  $descriptionRadio.on 'change', (e) ->
    if this.checked
      $linkGroup.fadeOut 'fast', ->
        $descriptionGroup.fadeIn()

  $linkRadio.on 'change', (e) ->
    if this.checked
      $descriptionGroup.fadeOut 'fast', ->
        $linkGroup.fadeIn()

  $(document).on 'turbolinks:request-start', ->
    $descriptionRadio.off 'change'
    $linkRadio.off 'change'
    $(document).off 'turbolinks:request-start', ->
