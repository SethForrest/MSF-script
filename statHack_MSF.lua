printMsg = 1 -- Toggle Printouts
-- Script Version: 003
-- adapted from Marvel strike force Hack script (EAZY Version) by @Nofear and @Backlift at "GameGuardian.net" and "SBenny.com"
if printMsg == 1 then
  gg.alert('  monikr`s MSF stat hack \n\n adapted from "Marvel strike force Hack script"\n by @Nofear and @Backlift at "GameGuardian.net" and "SBenny.com" ')
  print(  '@Monikr V: 004\n',
          'Adapted from work by @Backlift, @Nofear => "GameGuardian.net" / "SBenny.com" V:1143\n')
end
gg.require('8.57.0')
gg.clearResults()


--[[ Char Stats ]]
charList = {
  {30497, 3924, 102, "Quake"},
  {34736,	3010,	95, "Wolverine"},
  {12832,	2588,	98, "Punisher"},

  -- {17387,	2349,	80, "Thor"}, --?
  -- {12596,	2066,	112, "Deadpool"},

  {11310, 2193, 116, "Spider Man"},
  {6393, 1273, 91, "Cable"}, --?

  {6337, 1003, 116, "Hawkeye"},
  {5340,	960,	107, "Hand Archer"}, --?
  {5776, 1234, 95, "Hydra Rifle Trooper"},

  -- {137,	40,	108, "Ravager Boomer"}, --?
  {106,	51,	97, "SHIELD Assault"},
  {318,	74,	87, "Hydra Grenadier"},
  nil --End with nil
}


function hack(stats_variable)
  --[[
  This function takes the provided stats and hacks the specified char.
  designed by @Backlift and @Nofear, modified by @monikr
  --]]
  v = gg.prompt({'CURRENT Health', 'CURRENT Damage', 'CURRENT Speed'}, stats_variable, {'number', 'number', 'number'})

  hp = v[1] - 1 .. '~' .. v[1] + 1
  dmg = v[2] - 1 .. '~' .. v[2] + 1
  sp = v[3] - 1 .. '~' .. v[3] + 1
  input = hp .. ';' .. sp ..  ';' .. dmg ..'::17'

  gg.clearResults()
  gg.searchNumber(input, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll('85000', gg.TYPE_DWORD)
  gg.clearResults()
end


--[[ Populate the nameList ]]
nameList = {}
for i = 1, #charList do
  nameList[i] = charList[i][4]
end
nameList[#nameList+1] = '-> Wait in Background'
nameList[#nameList+1] = '-> Exit'


---[[ --MENUS
::mainmenu::
  if gg.isVisible(true)
    then gg.setVisible(false)
  end

  selection = gg.choice( nameList, nil,
    '                                            ~~   Main Menu   ~~')
  nameLength = #nameList --calculate length of namelist array
  if selection <= nameLength-2 then
    hack(charList[selection])
    goto sleep

  elseif selection == nameLength-1
    then goto sleep
  elseif selection == nameLength
    then goto exit
  end

::sleep::
  gg.setVisible(false)
::sleep2::
  gg.sleep(100)
  if gg.isVisible(true) then
    goto mainmenu
  else goto sleep2
  end

::exit::
  if printMsg == 1 then
    gg.alert('Thanks for using our script, Enjoy the hack by @Backlift and @Nofear, modifiedby @monikr from "GameGuardian.net" and "SBenny.com" ')
  end
  os.exit()
--]]
