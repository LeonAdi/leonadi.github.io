---
---

sidebarShown = false

$(document).ready ->
  $(".sidebar-toggle").click ->
    $(".sidebar").show()
    $(@).hide()
    sidebarShown = true
  $(".main").click ->
    if sidebarShown
      $(".sidebar").hide()
      $(".sidebar-toggle").show()
      sidebarShown = false
