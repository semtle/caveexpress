function getName()
	return "Map 03"
end

function initMap()
	-- get the current map context
	local map = Map.get()
	map:addTile("tile-background-ice-02", 0, 0)
	map:addTile("tile-background-ice-cave-art-01", 0, 1)
	map:addTile("tile-background-ice-02", 0, 2)
	map:addTile("tile-background-ice-big-01", 0, 3)
	map:addTile("tile-background-ice-02", 0, 5)
	map:addTile("tile-background-ice-06", 0, 6)
	map:addTile("tile-background-ice-02", 0, 7)
	map:addTile("tile-background-ice-05", 0, 8)
	map:addTile("tile-background-ice-05", 0, 9)
	map:addTile("tile-background-ice-05", 0, 10)
	map:addTile("tile-background-ice-02", 0, 11)
	map:addTile("tile-background-ice-02", 1, 0)
	map:addTile("tile-background-ice-big-01", 1, 1)
	map:addTile("tile-background-ice-05", 1, 5)
	map:addTile("tile-background-ice-05", 1, 6)
	map:addTile("tile-background-ice-07", 1, 7)
	map:addTile("tile-background-ice-big-01", 1, 8)
	map:addTile("tile-background-ice-big-01", 1, 10)
	map:addTile("tile-ground-ledge-ice-left-02", 2, 0)
	map:addTile("tile-background-ice-07", 2, 3)
	map:addTile("tile-ground-ledge-ice-left-02", 2, 5)
	map:addTile("tile-background-ice-07", 2, 6)
	map:addTile("tile-background-ice-05", 2, 7)
	map:addTile("tile-rock-ice-01", 3, 0)
	map:addTile("tile-ground-ledge-ice-left-02", 3, 1)
	map:addTile("tile-background-ice-06", 3, 2)
	map:addTile("tile-background-ice-02", 3, 3)
	map:addTile("tile-background-ice-window-02", 3, 4)
	map:addTile("tile-ground-ice-01", 3, 5)
	map:addTile("tile-ground-ledge-ice-left-01", 3, 6)
	map:addTile("tile-background-ice-01", 3, 7)
	map:addTile("tile-background-ice-05", 3, 8)
	map:addTile("tile-background-ice-04", 3, 9)
	map:addTile("tile-background-ice-02", 3, 10)
	map:addTile("tile-background-ice-02", 3, 11)
	map:addTile("tile-rock-ice-02", 4, 0)
	map:addTile("tile-ground-ledge-ice-left-01", 4, 1)
	map:addTile("tile-background-ice-07", 4, 2)
	map:addTile("tile-background-ice-03", 4, 3)
	map:addTile("tile-background-ice-01", 4, 4)
	map:addTile("tile-ground-ice-03", 4, 5)
	map:addTile("tile-rock-ice-big-01", 4, 6)
	map:addTile("tile-ground-ledge-ice-left-01", 4, 8)
	map:addTile("tile-background-ice-07", 4, 9)
	map:addTile("tile-background-ice-cave-art-01", 4, 10)
	map:addTile("tile-background-ice-02", 4, 11)
	map:addTile("tile-rock-ice-01", 5, 0)
	map:addTile("tile-rock-ice-02", 5, 1)
	map:addTile("tile-rock-ice-01", 5, 2)
	map:addTile("tile-rock-ice-02", 5, 3)
	map:addTile("tile-rock-ice-02", 5, 4)
	map:addTile("tile-rock-ice-02", 5, 5)
	map:addTile("tile-rock-ice-02", 5, 8)
	map:addTile("tile-background-ice-cave-art-01", 5, 9)
	map:addTile("tile-background-ice-07", 5, 10)
	map:addTile("tile-background-ice-02", 5, 11)
	map:addTile("tile-rock-ice-02", 6, 0)
	map:addTile("tile-ground-ledge-ice-right-01", 6, 1)
	map:addTile("tile-background-ice-04", 6, 2)
	map:addTile("tile-background-ice-04", 6, 3)
	map:addTile("tile-background-ice-01", 6, 4)
	map:addTile("tile-ground-ice-03", 6, 5)
	map:addTile("tile-rock-ice-01", 6, 6)
	map:addTile("tile-rock-ice-02", 6, 7)
	map:addTile("tile-ground-ledge-ice-right-02", 6, 8)
	map:addTile("tile-background-ice-02", 6, 9)
	map:addTile("tile-background-ice-01", 6, 10)
	map:addTile("tile-background-ice-02", 6, 11)
	map:addTile("tile-rock-ice-01", 7, 0)
	map:addTile("tile-background-ice-03", 7, 1)
	map:addTile("tile-background-ice-03", 7, 2)
	map:addTile("tile-background-ice-06", 7, 3)
	map:addTile("tile-background-ice-03", 7, 4)
	map:addTile("tile-ground-ice-01", 7, 5)
	map:addTile("tile-background-ice-04", 7, 6)
	map:addTile("tile-background-ice-07", 7, 7)
	map:addTile("tile-background-ice-06", 7, 8)
	map:addTile("tile-background-ice-06", 7, 9)
	map:addTile("tile-background-ice-02", 7, 10)
	map:addTile("tile-background-ice-02", 7, 11)
	map:addTile("tile-rock-ice-02", 8, 0)
	map:addTile("tile-ground-ledge-ice-left-02", 8, 1)
	map:addTile("tile-background-ice-03", 8, 2)
	map:addTile("tile-background-ice-cave-art-01", 8, 3)
	map:addTile("tile-background-ice-window-01", 8, 4)
	map:addTile("tile-ground-ledge-ice-right-01", 8, 5)
	map:addTile("tile-background-ice-01", 8, 6)
	map:addTile("tile-background-ice-04", 8, 7)
	map:addTile("tile-background-ice-05", 8, 8)
	map:addTile("tile-background-ice-02", 8, 9)
	map:addTile("tile-background-ice-06", 8, 10)
	map:addTile("tile-background-ice-02", 8, 11)
	map:addTile("tile-rock-ice-01", 9, 0)
	map:addTile("tile-rock-ice-01", 9, 1)
	map:addTile("tile-ground-ledge-ice-left-02", 9, 2)
	map:addTile("tile-background-ice-06", 9, 3)
	map:addTile("tile-ground-ledge-ice-right-02", 9, 5)
	map:addTile("tile-background-ice-01", 9, 6)
	map:addTile("tile-background-ice-07", 9, 7)
	map:addTile("tile-background-ice-03", 9, 8)
	map:addTile("tile-background-ice-02", 9, 9)
	map:addTile("tile-background-ice-02", 9, 10)
	map:addTile("tile-background-ice-02", 9, 11)
	map:addTile("tile-rock-ice-02", 10, 0)
	map:addTile("tile-rock-ice-02", 10, 1)
	map:addTile("tile-ground-ledge-ice-right-02", 10, 2)
	map:addTile("tile-background-ice-02", 10, 3)
	map:addTile("tile-background-ice-01", 10, 4)
	map:addTile("tile-background-ice-02", 10, 5)
	map:addTile("tile-background-ice-cave-art-01", 10, 6)
	map:addTile("tile-background-ice-06", 10, 7)
	map:addTile("tile-background-ice-07", 10, 8)
	map:addTile("tile-background-ice-06", 10, 9)
	map:addTile("tile-background-ice-02", 10, 10)
	map:addTile("tile-background-ice-02", 10, 11)
	map:addTile("tile-rock-ice-02", 11, 0)
	map:addTile("tile-ground-ledge-ice-right-01", 11, 1)
	map:addTile("tile-background-ice-06", 11, 2)
	map:addTile("tile-background-ice-05", 11, 3)
	map:addTile("tile-background-ice-06", 11, 4)
	map:addTile("tile-background-ice-05", 11, 5)
	map:addTile("tile-background-ice-03", 11, 6)
	map:addTile("tile-background-ice-cave-art-01", 11, 7)
	map:addTile("tile-background-ice-05", 11, 8)
	map:addTile("tile-background-ice-02", 11, 9)
	map:addTile("tile-background-ice-06", 11, 10)
	map:addTile("tile-background-ice-02", 11, 11)
	map:addTile("tile-ground-ledge-ice-right-01", 12, 0)
	map:addTile("tile-background-ice-07", 12, 1)
	map:addTile("tile-background-ice-02", 12, 2)
	map:addTile("tile-background-ice-03", 12, 3)
	map:addTile("tile-background-ice-01", 12, 4)
	map:addTile("tile-background-ice-04", 12, 5)
	map:addTile("tile-background-ice-03", 12, 6)
	map:addTile("tile-background-ice-01", 12, 7)
	map:addTile("tile-background-ice-02", 12, 8)
	map:addTile("tile-background-ice-02", 12, 9)
	map:addTile("tile-background-ice-02", 12, 10)
	map:addTile("tile-background-ice-02", 12, 11)
	map:addTile("tile-ground-ledge-ice-right-02", 13, 0)
	map:addTile("tile-background-ice-cave-art-01", 13, 1)
	map:addTile("tile-background-ice-05", 13, 2)
	map:addTile("tile-background-ice-02", 13, 3)
	map:addTile("tile-background-ice-07", 13, 4)
	map:addTile("tile-ground-ice-02", 13, 5)
	map:addTile("tile-ground-ledge-ice-left-02", 13, 6)
	map:addTile("tile-background-ice-03", 13, 7)
	map:addTile("tile-background-ice-02", 13, 8)
	map:addTile("tile-background-ice-06", 13, 9)
	map:addTile("tile-background-ice-03", 13, 10)
	map:addTile("tile-background-ice-02", 13, 11)
	map:addTile("tile-background-ice-cave-art-01", 14, 0)
	map:addTile("tile-background-ice-02", 14, 1)
	map:addTile("tile-background-ice-02", 14, 2)
	map:addTile("tile-background-ice-03", 14, 3)
	map:addTile("tile-background-ice-05", 14, 4)
	map:addTile("tile-packagetarget-ice-01-idle", 14, 5)
	map:addTile("tile-ground-ledge-ice-left-01", 14, 6)
	map:addTile("tile-background-ice-05", 14, 7)
	map:addTile("tile-background-ice-05", 14, 8)
	map:addTile("tile-background-ice-02", 14, 9)
	map:addTile("tile-background-ice-05", 14, 10)
	map:addTile("tile-background-ice-02", 14, 11)
	map:addTile("tile-background-ice-06", 15, 0)
	map:addTile("tile-background-ice-cave-art-01", 15, 1)
	map:addTile("tile-background-ice-02", 15, 2)
	map:addTile("tile-background-ice-05", 15, 3)
	map:addTile("tile-background-ice-02", 15, 4)
	map:addTile("tile-ground-ice-03", 15, 5)
	map:addTile("tile-rock-ice-02", 15, 6)
	map:addTile("tile-background-ice-02", 15, 7)
	map:addTile("tile-background-ice-07", 15, 8)
	map:addTile("tile-background-ice-05", 15, 9)
	map:addTile("tile-background-ice-06", 15, 10)
	map:addTile("tile-background-ice-02", 15, 11)

	map:addCave("tile-cave-ice-01", 2, 4, "npc-woman", 2000)
	map:addCave("tile-cave-ice-01", 9, 4, "npc-man", 2000)

	map:addEmitter("item-stone", 15, 4, 1, 0)
	map:addEmitter("item-stone", 15.2, 3.5, 1, 0)

	map:setSetting("fishnpc", "false")
	map:setSetting("flyingnpc", "true")
	map:setSetting("gravity", "9.81")
	map:setSetting("height", "12")
	map:setSetting("packagetransfercount", "4")
	map:addStartPosition("4", "4")
	map:setSetting("points", "100")
	map:setSetting("referencetime", "50")
	map:setSetting("theme", "ice")
	map:setSetting("waterheight", "1")
	map:setSetting("waterchangespeed", "0.03")
	map:setSetting("waterrisingdelay", "0")
	map:setSetting("width", "16")
	map:setSetting("wind", "0.0")
end
