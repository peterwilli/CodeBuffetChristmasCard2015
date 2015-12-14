fetchMessage = ->
  key = $.urlParam('key')
  #console.log key
  if key?
    $.get("msgs/" + key + ".txt", (data) ->
      $back = $(".card-text-inner .back");
      $back.text(data)
      $(".card-text").transit(opacity: 1, duration: 1000)
      setTimeout(->
        $(".text-scroller").css('height', ($back.height() + $back.offset().top + 100) + "px")
      , 100)
    )