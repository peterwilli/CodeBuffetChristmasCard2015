$ ->
  stars = []
  amountOfStars = 3
  $stars = $ '.stars'
  randHeight = ((Math.random() * 100) + window.innerHeight / 3)

  class Star
    constructor: (@$star) ->
      @speed = Math.random() + 0.2

  setInterval(->
    stars_ = stars[..]
    for star, i in stars_
      $star = star.$star
      $star.css(
        top: "#{$star.offset().top + (2 * star.speed)}px"
      )

      if $star.offset().top > randHeight
        $star.css(top: '-40px')
        randHeight = ((Math.random() * 100) + window.innerHeight / 3)

    return
  , 100)

  for i in [0..Math.round(window.innerWidth / 10)]
    starIdx = Math.round(Math.random() * (amountOfStars - 1)) + 1
    $star = $("<img src=\"img/star#{starIdx}.png\" />")
    $star.css(
      left: "#{Math.round(Math.random() * 1000) / 10}%"
      top: "#{Math.round(Math.random() * 300) - 40}px"
    )
    $stars.append $star
    stars.push new Star($star)