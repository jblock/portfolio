$(document).ready ->
  $('img.svg').each ->
     $img = $(this)
     imgID = $img.attr('id')
     imgClass = $img.attr('class')
     imgURL = $img.attr('src')

     $.get imgURL, (data) ->
         $svg = $(data).find 'svg'
         $svg = $svg.attr 'id', imgID if typeof imgID is not 'undefined'
         $svg = $svg.attr 'class', imgClass+' replaced-svg' if typeof imgClass is not 'undefined'
         $svg = $svg.removeAttr 'xmlns:a'
         $img.replaceWith $svg