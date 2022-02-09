mon = peripheral.wrap("back")
term.clear()
mon.setTextScale(1)
term.setCursorPos(2,1)
print("ME-Sytem")

while true do
	event,side,x,y = os.pullEvent("monitor_touch")

	if x > 1 and x < 10 and y == 1 and redstone.getInput("right") == true then

		redstone.setOutput("right",false)
		term.setCursorPos(2,1)
		term.setTextColor(32)
		print("ME-Sytem")

	elseif x > 1 and x < 10 and y == 1 and redstone.getInput("right") == false then

		redstone.setOutput("right",true)
		term.setCursorPos(2,1)
		term.setTextColor(16834)
		print("ME-Sytem")
	end
end
