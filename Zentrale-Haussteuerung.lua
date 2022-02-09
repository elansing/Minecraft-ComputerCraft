mon = peripheral.wrap("back")
term.clear()
mon.setTextScale(1)
term.setCursorPos(2,1)
print("AKW")
term.setCursorPos(2,3)
print("Sawmill")
term.setCursorPos(2,5)
print("Itemverbrennung")
term.setCursorPos(2,7)
print("Bienen")
term.setCursorPos(2,9)
print("Oil")

while true do
	event,side,x,y = os.pullEvent("monitor_touch")

	if x > 1 and x < 5 and y == 1 and redstone.getInput("left") == false then

		redstone.setOutput("left",true)
		term.setCursorPos(2,1)
		term.setTextColor(32)
		print("AKW")

	elseif x > 1 and x < 5 and y == 1 and redstone.getInput("left") == true then

		redstone.setOutput("left",false)
		term.setCursorPos(2,1)
		term.setTextColor(16834)
		print("AKW")

	elseif x > 1 and x < 9 and y == 3 and redstone.getInput("right") == false then

		redstone.setOutput("right",true)
		term.setCursorPos(2,3)
		term.clearLine()
		term.setTextColor(32)
		print("Sawmill")

	elseif x > 1 and x < 9 and y == 3 and redstone.getInput("right") == true then

		redstone.setOutput("right",false)
		term.setCursorPos(2,3)
		term.clearLine()
		term.setTextColor(16834)
		print("Sawmill")

	elseif x > 1 and x < 17 and y == 5 and redstone.getInput("top") == false then

		redstone.setOutput("top",true)
		term.setCursorPos(2,5)
		term.clearLine()
		term.setTextColor(32)
		print("Itemverbrennung")

	elseif x > 1 and x < 17 and y == 5 and redstone.getInput("top") == true then

		redstone.setOutput("top",false)
		term.setCursorPos(2,5)
		term.clearLine()
		term.setTextColor(16834)
		print("Itemverbrennung")

	elseif x > 1 and x < 8 and y == 7 and redstone.getInput("bottom") == false then

		redstone.setOutput("bottom",true)
		term.setCursorPos(2,7)
		term.clearLine()
		term.setTextColor(32)
		print("Bienen")

	elseif x > 1 and x < 8 and y == 7 and redstone.getInput("bottom") == true then

		redstone.setOutput("bottom",false)
		term.setCursorPos(2,7)
		term.clearLine()
		term.setTextColor(16834)
		print("Bienen")

	elseif x > 1 and x < 5 and y == 9 and redstone.getInput("front") == false then

		redstone.setOutput("front",true)
		term.setCursorPos(2,9)
		term.clearLine()
		term.setTextColor(32)
		print("Oil")

	elseif x > 1 and x < 5 and y == 9 and redstone.getInput("front") == true then

		redstone.setOutput("front",false)
		term.setCursorPos(2,9)
		term.clearLine()
		term.setTextColor(16834)
		print("Oil")
	end
end
