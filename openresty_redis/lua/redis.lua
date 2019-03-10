
local redis = {}

local function connect()
	local redis = require "resty.redis"
	local red = redis:new()

	red:set_timeout(1000) -- 1 sec
	local ok, err = red:connect("openresty_redis_redis_1", 6379)
	if not ok then
		return nil, err
	end
	return red

end

function redis.increment()
	local red, err = connect()
	if not red then
		return err
	end
	local ok, err =  red:incr("variable");
	return ok, err
end

function redis.decrement()
	local red, err = connect()
	if not red then
		return err
	end
	local ok, err =  red:decr("variable");
	return ok, err
end
return redis
