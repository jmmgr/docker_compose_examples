local redis = require("redis")

local result, err = redis.increment();
if not result then
	ngx.say('Failed increment: ',err)
	return
end

ngx.say("Incr result: ", result)
