{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fcharset0 Courier New;}{\f1\fswiss\fcharset0 Arial;}}
{\*\generator Msftedit 5.41.15.1515;}\viewkind4\uc1\pard\tx0\tx959\tx1918\tx2877\tx3836\tx4795\tx5754\tx6713\tx7672\tx8631\f0\fs20 (function($)\{\par
 $.fn.truncate = function(options) \{\par
    \par
  var defaults = \{\par
   length: 300,\par
   minTrail: 20,\par
   moreText: "more",\par
   lessText: "less",\par
   ellipsisText: "..."\par
  \};\par
  \par
  var options = $.extend(defaults, options);\par
    \par
  return this.each(function() \{\par
   obj = $(this);\par
   var body = obj.html();\par
   \par
   if(body.length > options.length + options.minTrail) \{\par
    var splitLocation = body.indexOf(' ', options.length);\par
    if(splitLocation != -1) \{\par
     // truncate tip\par
     var splitLocation = body.indexOf(' ', options.length);\par
     var str1 = body.substring(0, splitLocation);\par
     var str2 = body.substring(splitLocation, body.length - 1);\par
     obj.html(str1 + '<span class="truncate_ellipsis">' + options.ellipsisText + \par
      '</span>' + '<span  class="truncate_more">' + str2 + '</span>');\par
     obj.find('.truncate_more').css("display", "none");\par
     \par
     // insert more link\par
     obj.append(\par
      '<div class="clearboth">' +\par
       '<a href="#" class="truncate_more_link">' +  options.moreText + '</a>' + \par
      '</div>'\par
     );\par
\par
     // set onclick event for more/less link\par
     var moreLink = $('.truncate_more_link', obj);\par
     var moreContent = $('.truncate_more', obj);\par
     var ellipsis = $('.truncate_ellipsis', obj);\par
     moreLink.click(function() \{\par
      if(moreLink.text() == options.moreText) \{\par
       moreContent.show('normal');\par
       moreLink.text(options.lessText);\par
       ellipsis.css("display", "none");\par
      \} else \{\par
       moreContent.hide('normal');\par
       moreLink.text(options.moreText);\par
       ellipsis.css("display", "inline");\par
      \}\par
      return false;\par
       \});\par
    \}\par
   \} // end if\par
   \par
  \});\par
 \};\par
\})(jQuery);\par
\pard\f1\par
}
 