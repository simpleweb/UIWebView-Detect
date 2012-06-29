class UIWebViewDetect
  regex: /(iPhone|iPod|iPad).*AppleWebKit(?!.*Safari)/i

  constructor: ->
    if @isUIWebView()
      $('html').addClass 'uiwebview'

  isUIWebView: ->
    @regex.test navigator.userAgent

window.UIWebViewDetector = new UIWebViewDetect()

$.isUIWebView = ->
  UIWebViewDetector.isUIWebView()
