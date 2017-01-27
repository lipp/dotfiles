function focus_chrome()
  hs.application.launchOrFocus('Google Chrome')
end
hs.hotkey.bind({"cmd", "alt"}, 'g', focus_chrome)

function focus_iterm()
  hs.application.launchOrFocus('iTerm')
end
hs.hotkey.bind({"cmd", "alt"}, 't', focus_iterm)

function focus_vim()
  hs.application.launchOrFocus('MacVim')
end
hs.hotkey.bind({"cmd", "alt"}, 'e', focus_vim)
