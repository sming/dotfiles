local hotkey = require "hs.hotkey"
local window = require "hs.window"
local screen = require "hs.screen"
local alert = require "hs.alert"

window.animationDuration = 0

-- Make window full screen
hotkey.bind({"cmd", "alt"}, "F", function()
  local win = window.focusedWindow()
  local screen = win:screen()
  local max = screen:frame()

  win:setFrame(max)
end)

-- Align window to center of the screen
hotkey.bind({"cmd", "alt"}, "C", function()
  local win = window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = (max.w - f.w) / 2
  f.y = (max.h - f.h) / 2
  win:setFrame(f)
end)

-- Align window to left 50% of the screen
hotkey.bind({"cmd", "alt"}, "[", function()
  local win = window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Align window to right 50% of the screen
hotkey.bind({"cmd", "alt"}, "]", function()
  local win = window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Align window to top left of the screen
hotkey.bind({"cmd", "ctrl"}, "[", function()
  local win = window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = 0
  f.y = 0
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Align window to top right of the screen
hotkey.bind({"cmd", "ctrl"}, "]", function()
  local win = window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.w / 2
  f.y = 0
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Move window to the display on the left
hotkey.bind({"cmd", "ctrl"}, "-", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenWest()
end)

-- Move window to the display on the right
hotkey.bind({"cmd", "ctrl"}, "=", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenEast()
end)