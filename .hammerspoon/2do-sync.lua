-- Sync whenever 2do is deactivated

function sync_2do()
	local twoDo = hs.appfinder.appFromName('2Do')

	-- Only if internet is available
	if hs.network.reachability.internet():status() == 2 then
		twoDo:selectMenuItem({"File", "Sync"})
	end
end

hs.hotkey.bind({'cmd', 'alt'}, 'W', sync_2do)
hs.application.watcher.new(function(name, type)
	if name == '2Do' and type == hs.application.watcher.activated then
		sync_2do()
	end
end):start()

hs.timer.new(60, function()
	if hs.application.frontmostApplication():name() == '2Do' then
		sync_2do()
	end
end):start()
