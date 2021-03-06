#pragma once

#include "network/IProtocolMessage.h"

namespace caveexpress {

class WaterImpactMessage: public IProtocolMessage {
private:
	float _x;
	float _force;
public:
	WaterImpactMessage (float x, float force) :
			IProtocolMessage(protocol::PROTO_WATERIMPACT), _x(x), _force(force)
	{
	}

	PROTOCOL_CLASS_FACTORY(WaterImpactMessage);
	WaterImpactMessage (ByteStream& input) :
			IProtocolMessage(protocol::PROTO_WATERIMPACT)
	{
		_x = input.readShortScaled();
		_force = input.readShortScaled();
	}

	void serialize (ByteStream& out) const override
	{
		out.addByte(_id);
		out.addShortScaled(_x);
		out.addShortScaled(_force);
	}

	inline float getImpactX () const
	{
		return _x;
	}

	inline float getImpactForce () const
	{
		return _force;
	}
};

}
