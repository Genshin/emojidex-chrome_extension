elm_replace = $("body")
elm_autocomplete = $("[contentEditable=true], textarea")

if elm_replace.find('.emojidex-emoji').length is 0
    elm_replace.emojidexReplace
      useLoadingImg: false

  if setAutocomplete
    if tab_url.match /twitter.com/
      elm_autocomplete.emojidexAutocomplete
        insertImg: false
    else
      elm_autocomplete.emojidexAutocomplete()
else
  loaded_emoji = elm_replace.find('.emojidex-emoji')
  for reload in loaded_emoji
    new_img = "<img
      class='#{reload.className}'
      src='#{reload.src}'
      title='#{reload.title}'
    ></img>"
    $(reload).replaceWith new_img

if autoUpdate
  elm_replace.emojidexReplace
    autoUpdate: true
else
  elm_replace.emojidexReplace
    autoUpdate: false
