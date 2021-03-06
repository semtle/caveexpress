function getName()
	return "Map 11"
end

function onMapLoaded()
end

function initMap()
	-- get the current map context
	local map = Map.get()
	map:addTile("tile-background-ice-01", 0, 0)
	map:addTile("tile-background-ice-03", 0, 1)
	map:addTile("tile-background-ice-03", 0, 2)
	map:addTile("tile-background-ice-02", 0, 3)
	map:addTile("tile-ground-ice-03", 0, 4)
	map:addTile("tile-rock-slope-ice-left-02", 0, 5)
	map:addTile("tile-background-ice-02", 0, 6)
	map:addTile("tile-background-ice-01", 0, 7)
	map:addTile("tile-background-ice-big-01", 0, 8)
	map:addTile("tile-background-ice-07", 0, 10)
	map:addTile("tile-background-ice-07", 0, 11)
	map:addTile("tile-background-ice-03", 1, 0)
	map:addTile("tile-background-ice-03", 1, 1)
	map:addTile("tile-background-ice-01", 1, 2)
	map:addTile("tile-background-ice-cave-art-01", 1, 3)
	map:addTile("tile-packagetarget-ice-01-idle", 1, 4)
	map:addTile("tile-rock-ice-03", 1, 5)
	map:addTile("tile-background-ice-02", 1, 6)
	map:addTile("tile-background-ice-05", 1, 7)
	map:addTile("tile-background-ice-02", 1, 10)
	map:addTile("tile-background-ice-02", 1, 11)
	map:addTile("tile-background-ice-02", 2, 0)
	map:addTile("tile-background-ice-big-01", 2, 1)
	map:addTile("tile-background-ice-04", 2, 3)
	map:addTile("tile-ground-ice-03", 2, 4)
	map:addTile("tile-ground-ledge-ice-right-01", 2, 5)
	map:addTile("tile-background-ice-06", 2, 6)
	map:addTile("tile-background-ice-02", 2, 7)
	map:addTile("tile-background-ice-03", 2, 8)
	map:addTile("tile-background-ice-07", 2, 9)
	map:addTile("tile-background-ice-06", 2, 10)
	map:addTile("tile-background-ice-07", 2, 11)
	map:addTile("tile-background-ice-07", 3, 0)
	map:addTile("tile-background-ice-04", 3, 3)
	map:addTile("tile-ground-ice-04", 3, 4)
	map:addTile("tile-ground-ledge-ice-right-02", 3, 5)
	map:addTile("tile-background-ice-06", 3, 6)
	map:addTile("tile-background-ice-04", 3, 7)
	map:addTile("tile-background-ice-big-01", 3, 8)
	map:addTile("tile-background-ice-big-01", 3, 10)
	map:addTile("tile-background-ice-03", 4, 0)
	map:addTile("tile-background-ice-04", 4, 1)
	map:addTile("tile-background-ice-07", 4, 2)
	map:addTile("tile-background-ice-04", 4, 3)
	map:addTile("tile-background-ice-04", 4, 4)
	map:addTile("tile-background-ice-04", 4, 5)
	map:addTile("tile-background-ice-03", 4, 6)
	map:addTile("tile-background-ice-04", 4, 7)
	map:addTile("tile-ground-ledge-ice-left-02", 5, 0)
	map:addTile("tile-background-ice-03", 5, 1)
	map:addTile("tile-background-ice-big-01", 5, 2)
	map:addTile("tile-background-ice-04", 5, 4)
	map:addTile("tile-background-ice-07", 5, 5)
	map:addTile("tile-background-ice-big-01", 5, 6)
	map:addTile("tile-background-ice-02", 5, 8)
	map:addTile("tile-background-ice-06", 5, 9)
	map:addTile("tile-background-ice-07", 5, 10)
	map:addTile("tile-background-ice-02", 5, 11)
	map:addTile("tile-ground-ledge-ice-left-01", 6, 0)
	map:addTile("tile-background-ice-04", 6, 1)
	map:addTile("tile-background-ice-04", 6, 4)
	map:addTile("tile-background-ice-03", 6, 5)
	map:addTile("tile-background-ice-07", 6, 8)
	map:addTile("tile-background-ice-05", 6, 9)
	map:addTile("tile-background-ice-04", 6, 10)
	map:addTile("tile-background-ice-07", 6, 11)
	map:addTile("tile-rock-ice-big-01", 7, 0)
	map:addTile("tile-ground-ledge-ice-left-02", 7, 2)
	map:addTile("tile-background-ice-big-01", 7, 3)
	map:addTile("tile-background-ice-04", 7, 5)
	map:addTile("tile-background-ice-02", 7, 6)
	map:addTile("tile-background-ice-06", 7, 7)
	map:addTile("tile-background-ice-window-02", 7, 8)
	map:addTile("tile-ground-ice-02", 7, 9)
	map:addTile("tile-background-ice-04", 7, 10)
	map:addTile("tile-background-ice-07", 7, 11)
	map:addTile("tile-ground-ledge-ice-left-01", 8, 2)
	map:addTile("tile-background-ice-06", 8, 5)
	map:addTile("tile-background-ice-06", 8, 6)
	map:addTile("tile-background-ice-01", 8, 7)
	map:addTile("tile-ground-ice-02", 8, 9)
	map:addTile("tile-ground-ledge-ice-left-02", 8, 10)
	map:addTile("tile-background-ice-05", 8, 11)
	map:addTile("tile-rock-ice-01", 9, 0)
	map:addTile("tile-rock-ice-big-01", 9, 1)
	map:addTile("tile-background-ice-01", 9, 3)
	map:addTile("tile-background-ice-07", 9, 4)
	map:addTile("tile-background-ice-07", 9, 5)
	map:addTile("tile-background-ice-04", 9, 6)
	map:addTile("tile-background-ice-04", 9, 7)
	map:addTile("tile-ground-ice-03", 9, 8)
	map:addTile("tile-ground-ice-02", 9, 9)
	map:addTile("tile-ground-ledge-ice-left-01", 9, 10)
	map:addTile("tile-background-ice-05", 9, 11)
	map:addTile("tile-rock-ice-02", 10, 0)
	map:addTile("tile-background-ice-03", 10, 3)
	map:addTile("tile-background-ice-07", 10, 4)
	map:addTile("tile-background-ice-02", 10, 5)
	map:addTile("tile-background-ice-05", 10, 6)
	map:addTile("tile-rock-slope-ice-left-01", 10, 7)
	map:addTile("tile-rock-ice-01", 10, 8)
	map:addTile("tile-rock-ice-01", 10, 9)
	map:addTile("tile-rock-ice-big-01", 10, 10)
	map:addTile("tile-rock-ice-01", 11, 0)
	map:addTile("tile-rock-ice-02", 11, 1)
	map:addTile("tile-rock-slope-ice-right-02", 11, 2)
	map:addTile("tile-background-ice-big-01", 11, 3)
	map:addTile("tile-background-ice-06", 11, 5)
	map:addTile("tile-rock-slope-ice-left-01", 11, 6)
	map:addTile("tile-rock-ice-big-01", 11, 7)
	map:addTile("tile-ground-ice-02", 11, 9)
	map:addTile("tile-rock-ice-02", 12, 0)
	map:addTile("tile-rock-slope-ice-right-02", 12, 1)
	map:addTile("tile-background-ice-04", 12, 2)
	map:addTile("tile-background-ice-05", 12, 5)
	map:addTile("tile-ground-ice-02", 12, 6)
	map:addTile("tile-rock-ice-02", 12, 9)
	map:addTile("tile-rock-ice-02", 12, 10)
	map:addTile("tile-rock-ice-02", 12, 11)
	map:addTile("tile-ground-ledge-ice-right-02", 13, 0)
	map:addTile("tile-background-ice-03", 13, 1)
	map:addTile("tile-background-ice-03", 13, 2)
	map:addTile("tile-background-ice-big-01", 13, 3)
	map:addTile("tile-background-ice-06", 13, 5)
	map:addTile("tile-ground-ice-04", 13, 6)
	map:addTile("tile-rock-ice-01", 13, 7)
	map:addTile("tile-rock-ice-02", 13, 8)
	map:addTile("tile-rock-ice-01", 13, 9)
	map:addTile("tile-rock-ice-big-01", 13, 10)
	map:addTile("tile-background-ice-02", 14, 0)
	map:addTile("tile-background-ice-04", 14, 1)
	map:addTile("tile-background-ice-06", 14, 2)
	map:addTile("tile-background-ice-04", 14, 5)
	map:addTile("tile-ground-ice-02", 14, 6)
	map:addTile("tile-rock-ice-big-01", 14, 7)
	map:addTile("tile-rock-ice-02", 14, 9)
	map:addTile("tile-background-ice-02", 15, 0)
	map:addTile("tile-background-ice-05", 15, 1)
	map:addTile("tile-background-ice-03", 15, 2)
	map:addTile("tile-background-ice-01", 15, 3)
	map:addTile("tile-background-ice-05", 15, 4)
	map:addTile("tile-background-ice-07", 15, 5)
	map:addTile("tile-ground-ice-04", 15, 6)
	map:addTile("tile-rock-ice-01", 15, 9)
	map:addTile("tile-rock-ice-02", 15, 10)
	map:addTile("tile-rock-ice-02", 15, 11)

	map:addCave("tile-cave-ice-01", 8, 8, "none", 5000)

	map:addEmitter("item-stone", 9, 7, 1, 0, "")
	map:addEmitter("item-package-ice", 12.2, 5, 1, 0, "")
	map:addEmitter("item-package-ice", 12.7, 4, 1, 0, "")
	map:addEmitter("item-package-ice", 13.2, 5, 1, 0, "")
	map:addEmitter("npc-walking", 14, 5, 1, 0, "")

	map:setSetting("fishnpc", "true")
	map:setSetting("flyingnpc", "false")
	map:setSetting("gravity", "9.81")
	map:setSetting("height", "12")
	map:setSetting("packagetransfercount", "4")
	map:addStartPosition("3", "3")
	map:setSetting("points", "100")
	map:setSetting("referencetime", "40")
	map:setSetting("theme", "ice")
	map:setSetting("waterheight", "1")
	map:setSetting("waterchangespeed", "0")
	map:setSetting("waterrisingdelay", "0")
	map:setSetting("width", "16")
	map:setSetting("wind", "0.0")
end
