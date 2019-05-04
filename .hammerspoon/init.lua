local application = require "hs.application"
local hotkey = require "hs.hotkey"
local alert = require "hs.alert"

local keys = require "keys"
require "triggers"
-- require "window_management"
-- require "auto_muter"
require "application_watcher"

keys.deactivateKeys()
-- keys.activateKeys()


wifiMenu = hs.menubar.newWithPriority(2147483645)
wifiMenu:setTitle(hs.wifi.currentNetwork())

wifiWatcher = nil

function ssidChanged()
    local wifiName = hs.wifi.currentNetwork()
    if wifiName then
        wifiMenu:setTitle(wifiName)
    else 
        wifiMenu:setTitle("Wifi OFF")
    end
end

wifiWatcher = hs.wifi.watcher.new(ssidChanged):start()

alert.show("Hammerspoon loaded!")
