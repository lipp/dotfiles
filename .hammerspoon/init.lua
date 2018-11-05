function focus_chrome()
  hs.application.launchOrFocus('Google Chrome')
end
hs.hotkey.bind({"cmd", "alt"}, 'g', focus_chrome)

function focus_iterm()
  hs.application.launchOrFocus('iTerm')
end
hs.hotkey.bind({"cmd", "alt"}, 't', focus_iterm)

function focus_vim()
  hs.application.launchOrFocus('Visual Studio Code')
end
hs.hotkey.bind({"cmd", "alt"}, 'e', focus_vim)

function next_window()
  local window = hs.window.get(w["id"])
    hs.alert.show("Switching to" .. window:title())
    window:focus()
end

function createWindowChooser()
  choseWindow = function(w)
    local window = hs.window.get(w["id"])
    hs.alert.show("Switching to" .. window:title())
    window:focus()
  end

  local chooser = hs.chooser.new(choseWindow)
  hs.hotkey.bind({"alt"}, "tab", function()
    local windows = {}
    local wf = hs.window.filter.new()

    for _, w in pairs(wf:getWindows()) do
      table.insert(windows, {
        ["text"] = w:title(),
        ["subText"] = w:application():name(),
        ["id"] = w:id(),
      })
    end
    chooser:choices(windows)
    chooser:show()
  end)


end
createWindowChooser()

-- bind to hotkeys; WARNING: at least one modifier key is required!
-- hs.hotkey.bind('alt','tab','Next window', next_window)
