-- Script Version: 1143
-- Marvel strike force v1.2.0 Hack script (EAZY Version) by @Nofear and @Backlift at "GameGuardian.net" and "SBenny.com"
gg.alert(' Marvel strike force v1.2.0 Hack script (EAZY Version) by @Nofear and @Backlift at "GameGuardian.net" and "SBenny.com"')
print('@Backlift, @Nofear => "GameGuardian.net" / "SBenny.com" \n V: 1143')
gg.require('8.57.0')
gg.clearResults()
::mainmenu::
if gg.isVisible(true) 
then gg.setVisible(false) 
end
var1 = gg.choice({'Character 1 Data', 'Character 2 Data', 'Character 3 Data', 'Character 4 Data', 'Character 5 Data', 'Hack Menu', 'Wait at Background', 'Exit'}, nil, 'Main Menu')
if var1 == 1
then goto character1menu
elseif var1 == 2
then goto character2menu
elseif var1 == 3
then goto character3menu
elseif var1 == 4
then goto character4menu
elseif var1 == 5
then goto character5menu
elseif var1 == 6
then goto hackmenu
elseif var1 == 7
then goto sleep
elseif var1 == 8
then goto menuexit
else goto var1invalid
end
::character1menu::
gg.alert('Enter CURRENT stats of the character 1')
vch1 = gg.prompt({'CURRENT Health', 'CURRENT Speed', 'CURRENT Damage'}, nil, {'number', 'number', 'number'})
if vch1 == nil
then goto inputinvalid
end
gg.alert('Character 1 Hack ready!')
hpch1 = vch1[1] - 1 .. '~' .. vch1[1] + 1
spch1 = vch1[2] - 1 .. '~' .. vch1[2] + 1
dmgch1 = vch1[3] - 1 .. '~' .. vch1[3] + 1
input1 = hpch1 .. ';' .. spch1 .. ';' .. dmgch1 .. '::17'
goto mainmenu
::character2menu::
gg.alert('Enter CURRENT stats of the character 2')
vch2 = gg.prompt({'CURRENT Health', 'CURRENT Speed', 'CURRENT Damage'}, nil, {'number', 'number', 'number'})
if vch2 == nil
then goto inputinvalid
end
gg.alert('Character 2 Hack ready!')
hpch2 = vch2[1] - 1 .. '~' .. vch2[1] + 1
spch2 = vch2[2] - 1 .. '~' .. vch2[2] + 1
dmgch2 = vch2[3] - 1 .. '~' .. vch2[3] + 1
input2 = hpch2 .. ';' .. spch2 .. ';' .. dmgch2 .. '::17'
goto mainmenu
::character3menu::
gg.alert('Enter CURRENT stats of the character 3')
vch3 = gg.prompt({'CURRENT Health', 'CURRENT Speed', 'CURRENT Damage'}, nil, {'number', 'number', 'number'})
if vch3 == nil
then goto inputinvalid
end
gg.alert('Character 3 Hack ready!')
hpch3 = vch3[1] - 1 .. '~' .. vch3[1] + 1
spch3 = vch3[2] - 1 .. '~' .. vch3[2] + 1
dmgch3 = vch3[3] - 1 .. '~' .. vch3[3] + 1
input3 = hpch3 .. ';' .. spch3 .. ';' .. dmgch3 .. '::17'
goto mainmenu
::character4menu::
gg.alert('Enter CURRENT stats of the character 4')
vch4 = gg.prompt({'CURRENT Health', 'CURRENT Speed', 'CURRENT Damage'}, nil, {'number', 'number', 'number'})
if vch4 == nil
then goto inputinvalid
end
gg.alert('Character 4 Hack ready!')
hpch4 = vch4[1] - 1 .. '~' .. vch4[1] + 1
spch4 = vch4[2] - 1 .. '~' .. vch4[2] + 1
dmgch4 = vch4[3] - 1 .. '~' .. vch4[3] + 1
input4 = hpch4 .. ';' .. spch4 .. ';' .. dmgch4 .. '::17'
goto mainmenu
::character5menu::
gg.alert('Enter CURRENT stats of the character 5')
vch5 = gg.prompt({'CURRENT Health', 'CURRENT Speed', 'CURRENT Damage'}, nil, {'number', 'number', 'number'})
if vch5 == nil
then goto inputinvalid
end
gg.alert('Character 5 Hack ready!')
hpch5 = vch5[1] - 1 .. '~' .. vch5[1] + 1
spch5 = vch5[2] - 1 .. '~' .. vch5[2] + 1
dmgch5 = vch5[3] - 1 .. '~' .. vch5[3] + 1
input5 = hpch5 .. ';' .. spch5 .. ';' .. dmgch5 .. '::17'
goto mainmenu
::hackmenu::
if gg.isVisible(true) 
then gg.setVisible(false) 
end
gg.alert('Make SURE you are battle phase and NO DAMAGE is either taken or done!')
::restarthackmenu::
gg.clearResults()
var2 = gg.choice({'Character 1 Hack', 'Character 2 Hack', 'Character 3 Hack', 'Character 4 Hack', 'Character 5 Hack', 'Hack All(REQUIRES FULL SQUAD)', 'Wait at Background', 'Return to main menu'}, nil, 'Hack Menu')
if var2 == 1
then goto character1hack
elseif var2 == 2
then goto character2hack
elseif var2 == 3
then goto character3hack
elseif var2 == 4
then goto character4hack
elseif var2 == 5
then goto character5hack
elseif var2 == 6
then goto hackall
elseif var2 == 7
then goto sleeph
elseif var2 == 8
then goto mainmenu
else goto var2invalid
end
::character1hack::
if input1 == nil
then goto noinput
end
gg.clearResults()
gg.searchNumber(input1, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('850000', gg.TYPE_DWORD)
gg.clearResults()
gg.alert('Character 1 EAZY Hack Done!')
goto restarthackmenu
::character2hack::
if input2 == nil
then goto noinput
end
gg.clearResults()
gg.searchNumber(input2, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('850000', gg.TYPE_DWORD)
gg.clearResults()
gg.alert('Character 2 Hack Done!')
goto restarthackmenu
::character3hack::
if input3 == nil
then goto noinput
end
gg.clearResults()
gg.searchNumber(input3, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('850000', gg.TYPE_DWORD)
gg.clearResults()
gg.alert('Character 3 Hack Done!')
goto restarthackmenu
::character4hack::
if input4 == nil
then goto noinput
end
gg.clearResults()
gg.searchNumber(input4, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('850000', gg.TYPE_DWORD)
gg.clearResults()
gg.alert('Character 4 Hack Done!')
goto restarthackmenu
::character5hack::
if input5 == nil
then goto noinput
end
gg.clearResults()
gg.searchNumber(input5, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('850000', gg.TYPE_DWORD)
gg.clearResults()
gg.alert('Character 5 Hack Done!')
goto restarthackmenu
::hackall::
if input1 == nil
then goto noinput1
end
if input2 == nil
then goto noinput2
end
if input3 == nil
then goto noinput3
end
if input4 == nil
then goto noinput4
end
if input5 == nil
then goto noinput5
end
gg.clearResults()
gg.searchNumber(input1, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('850000', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber(input2, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('850000', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber(input3, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('850000', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber(input4, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('850000', gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber(input5, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('850000', gg.TYPE_DWORD)
gg.clearResults()
gg.alert('All characters hacked!')
goto mainmenu
os.exit()
::var1invalid::
gg.alert('Bad input, Please select an option or cancel the script by selecting exit')
goto mainmenu
::var2invalid::
gg.alert('Bad input, Please select an option or cancel the script')
goto restarthackmenu
::inputinvalid::
gg.alert('Bad input, Please enter valid input and check every field, returning to main menu')
goto mainmenu
::noinput1::
gg.alert('Data for character 1 is missing!')
goto restarthackmenu
::noinput2::
gg.alert('Data for character 2 is missing!')
goto restarthackmenu
::noinput3::
gg.alert('Data for character 3 is missing!')
goto restarthackmenu
::noinput4::
gg.alert('Data for character 4 is missing!')
goto restarthackmenu
::noinput5::
gg.alert('Data for character 5 is missing!')
goto restarthackmenu
::noinput::
gg.alert('Please enter data at characters section first! returning to main menu')
goto mainmenu
::sleeph::
gg.setVisible(false)
gg.alert('The menu will now hide and wait for further use, tap on GG icon to open the hack menu again')
::sleepphaseh2::
gg.sleep(100)
if gg.isVisible(true)
then goto hackmenu
else goto sleepphaseh2
end
::sleep::
gg.setVisible(false)
gg.alert('The menu will now hide and wait for further use, tap on GG icon to open the main menu again')
::sleepphase2::
gg.sleep(100)
if gg.isVisible(true)
then goto mainmenu
else goto sleepphase2
end
::menuexit::
gg.alert('Thanks for using our script, Enjoy the hack by @Backlift and @Nofear from "GameGuardian.net" and "SBenny.com" ')
goto endofscript
::endofscript::
os.exit()