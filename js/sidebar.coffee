---
---

sidebarShown = false

$(document).ready ->
  $(".sidebar-toggle").click ->
    $(".sidebar").show()
    $(@).hide()
    sidebarShown = true
  $(".main").click ->
    if sidebarShown and $(window).width() <= 850
      $(".sidebar").hide()
      $(".sidebar-toggle").show()
      sidebarShown = false
  $(window).resize ->
    if $(window).width() > 850
      $(".sidebar").show()
      $(".sidebar-toggle").hide()
    else
      $(".sidebar-toggle").show()
