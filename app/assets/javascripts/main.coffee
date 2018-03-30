ready = ->
  AOS.init
    offset: 0
    duration: 600
    easing: 'ease-in-sine'
    delay: 100
  return

$(document).ready ready
$(document).on 'turbolinks:load', ->
  ready
  # window.scrollTo 0, 0



# http://coffeescript.org/#top
# https://css-tricks.com/jquery-coffeescript/
# https://raw.githubusercontent.com/icebob/coffeescript_cheatsheet/master/coffeescript_cheatsheet.png
