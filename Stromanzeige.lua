card = peripheral.wrap("bottom")
mt = peripheral.wrap("top")
local speicher    = {}

anzal_cards = 3

function card_read()

	count = 1

	while count <= anzal_cards do

		a,b,c,info = card.get(count)
		i = 1
		speicher[count] = {}

			for system, status in pairs(info) do

				  status = tostring(status)
				  if  i == 1 then
					speicher[count][1] = system ;  speicher[count][2] = status
				  elseif i == 2 then
					speicher[count][3] = system ;  speicher[count][4] = status
				  end

					i = i +1

			end

		count = count + 1

	end

end



function calc()

	max_storage = 0
	akt_storage = 0

	for i = 1, #speicher , 1 do

		 max_storage = max_storage + speicher[i][4]
		 akt_storage = akt_storage + speicher[i][2]

	end

	prozent = 100/max_storage*akt_storage --ausrechnen
	prozent =  math.floor(prozent *100)/100	-- runden

end


function draw_line(j)

	count = 19
	while count <= 27  do

		mt.setCursorPos(count,j)
		mt.write(" ")

		count = count+1
	end

end



 function draw_mt()


	i = 18  -- oberer rahmen
	while i <= 28  do

			mt.setBackgroundColor(2048)
			mt.setCursorPos(i,2)
			mt.write(" ")

		i = i+1
	end

	i = 18  -- unterer rahmen
	while i <= 28  do

			mt.setBackgroundColor(2048)
			mt.setCursorPos(i,18)
			mt.write(" ")

		i = i+1
	end

	i = 2  -- rechter rahmen
	while i <= 18  do

			mt.setBackgroundColor(2048)
			mt.setCursorPos(28,i)
			mt.write(" ")

		i = i+1
	end

	i = 2  -- linker rahmen
	while i <= 18  do

			mt.setBackgroundColor(2048)
			mt.setCursorPos(18,i)
			mt.write(" ")

		i = i+1
	end





		if prozent >= 1 then

			line = prozent/(100/14)
			i = 0
			g = 17
			while i <= line do

				if prozent<= 25 then
					mt.setBackgroundColor(16384)
				elseif prozent <= 50 then
					mt.setBackgroundColor(2)
				elseif prozent <= 75 then
					mt.setBackgroundColor(16)
				elseif prozent 			   <= 100 then
					mt.setBackgroundColor(32)
				end

			draw_line(g)
			i=i+1
			g=g-1
			end

		end

mt.setBackgroundColor(32768)
mt.setCursorPos(1,17)
mt.write("Kapaz.:"..max_storage.."")
mt.setCursorPos(1,18)
mt.write("Speich:"..akt_storage.."")
mt.setCursorPos(1,19)
mt.write("Speich:"..prozent.."%")

	if prozent <= 15 then
		mt.setCursorPos(1,3)
		mt.write("Strommangel")
	end

mt.setCursorPos(3,1)
mt.write("Energy-Display")

	j = 0

end


while true do

card_read()
calc()

mt.clear()
draw_mt()
sleep(2)

end
