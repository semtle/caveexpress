#include "MapTile.h"
#include "miniracer/server/map/Map.h"
#include "common/SpriteDefinition.h"

namespace miniracer {

MapTile::MapTile (Map& map, int col, int row, const EntityType &type) :
		IEntity(type, map, col, row)
{
	setSpriteID(_type.name);
}

MapTile::~MapTile ()
{
}

SpriteDefPtr MapTile::getSpriteDef () const
{
	const SpriteDefPtr& def = SpriteDefinition::get().getSpriteDefinition(getSpriteID());
	return def;
}

}
