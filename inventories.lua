local names = peripheral.getNames() 

inventories = {}
invLists = {}

--[[First, we remove the modem and the ender
modem from the list of names, and put the
remaining names in table 'inventories' ]]--

for i, each in ipairs(names) do
	if (each == "back") then
		;
	elseif (each == "left") then 
		;
	else
		table.insert(inventories, peripheral.wrap(each))
	end
end

--[[Remove the inventories that have no items
and store the table we're interested in in temp,
eventually to be placed in a new table called
invLists, which holds the name and count of all
items in each inventory.]]--

for i, each in ipairs(inventories) do
	temp = each.list()[1]
	if temp == nil then
		;
	else
		table.insert(invLists, temp])
	end
end

for i, each in ipairs(invLists) do
	print(i, each["name"])
end

print("Select a seed...")
selection = io.read()
print("You've selected: ", selection)

selectionNum = tonumber(selection)

print("Count: " invLists[selectionNum]["count"])



