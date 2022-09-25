local isAdQuality = require "plugin.isAdQuality"
local widget =require "widget"
local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
bg:setFillColor( 0,0,1 )

local title = display.newText( {text = "IS Quality Plugin", fontSize = 30} )
title.width, title.height = 300, 168
title.x, title.y = display.contentCenterX, 168*.5
title:setFillColor(1,1,1)

local params  = {
    --required
    iOSAppKey = "replace with your own",
    androidAppKey = "replace with your own",
    --optional
    logLevel = "error",
    testMode = true,
    userId = "1234",
}


isAdQuality.init( listener, params )
isAdQuality.setUserConsent(true)

local setUserId= widget.newButton({
    label = "Set User Id",
    x = display.contentCenterX,
    y = display.contentCenterY-100,
    id = "setUserId",
    labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.5 } },
    onRelease =  function ()
        isAdQuality.setUserId("4321")
    end

})
