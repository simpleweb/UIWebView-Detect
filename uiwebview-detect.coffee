# UIWebViewDetect
# Detects if the web page is loaded within an
# iOS UIWebView, inside an application.
# Example:
#   UIWebViewDetector = new UIWebViewDetect()
#   UIWebViewDetector.isUIWebView()
class UIWebViewDetect

  # Hat tip: http://stackoverflow.com/questions/4460205/detect-ipad-iphone-webview-via-javascript
  regex: /(iPhone|iPod|iPad).*AppleWebKit(?!.*Safari)/i

  # Public: creates a new instance of UIWebViewDetect
  # If a UIWebView is detected it adds a class of 'uiwebview'
  # to the <html> element
  #
  # Returns a UIWebViewDetect
  constructor: ->
    if @isUIWebView()
      $('html').addClass 'uiwebview'

  # Public: does the user agent match a UIWebView?
  #
  # Returns a Boolean
  isUIWebView: ->
    @regex.test navigator.userAgent

# Attach an instance of UIWebViewDetect to the DOM
$ ->
  window.UIWebViewDetector = new UIWebViewDetect()

# jQuery / Zepto convenience method
$.isUIWebView = ->
  UIWebViewDetector.isUIWebView()
