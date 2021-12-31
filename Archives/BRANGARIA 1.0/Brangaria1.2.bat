@echo off

set attack=0
set attackmax=0
set defense=0
set defensemax=0
set health=0
set healthmax=0
set speed=0
set speedmax=0
set tokens=10
set cheat=50
set coin=25
set tipsy=0
echo Hello! Welcome to the world of Brangaria!
pause
cls
echo What is your name?
set /p name=Name:
cls
echo Hello, %name%!
pause
cls
echo We are in danger, and only you can save us!
pause
cls
echo In order to be a hero, you need a bit of stats! You can upgrade attack, defense, health, and speed.
pause
cls
echo Here are 10 tokens, spend them as you wish!
pause
cls
goto Attack

:attack
set /p buyattack=Attack:
if %buyattack% equ qwerty set /a attack=%attackmax%+%cheat%
set /a tokens=%tokens%-%buyattack%
set /a attack=%attack%+%buyattack%
set /a attackmax=%attackmax%+%buyattack%
set /a buyattack=%buyattack%-%buyattack%
echo You have %tokens% tokens left.
pause
cls
goto defense

:defense
set /p buydefense=Defense:
if %buydefense% equ asdf set /a defense=%defensemax%+%cheat%
set /a tokens=%tokens%-%buydefense%
set /a defense=%defense%+%buydefense%
set /a defensemax=%defensemax%+%buydefense%
set /a buydefense=%buydefense%-%buydefense%
echo You have %tokens% tokens left.
pause
cls
goto health

:health
set /p buyhealth=Health:
if %buyhealth% equ pretzel set /a health=%healthmax%+%cheat%
set /a tokens=%tokens%-%buyhealth%
set /a health=%health%+%buyhealth%
set /a healthmax=%healthmax%+%buyhealth%
set /a buyhealth=%buyhealth%-%buyhealth%
echo You have %tokens% tokens left.
pause
cls
goto speed

:speed
set /p buyspeed=Speed:
if %buyspeed% equ rasins set /a speed=%speedmax%+%cheat%
set /a tokens=%tokens%-%buyspeed%
set /a speed=%speed%+%buyspeed%
set /a speedmax=%speedmax%+%buyspeed%
set /a buyspeed=%buyspeed%-%buyspeed%
echo You have %tokens% tokens left.
pause
cls
goto statcheck

:statcheck
if %buyspeed%+%buyattack%+%buyhealth%+%buydefense% gtr 11 goto cheater
echo Your stats are...
echo Attack...........%attackmax%
echo Defense..........%defensemax%
echo Health...........%healthmax%
echo Speed............%speedmax%
goto frontdoor

:cheater
echo You used too many tokens!
pause
echo Time to start again!
set /a attack=%attack%-%attack%
set /a attackmax=%attackmax%-%attackmax%
set /a defense=%defense%-%defense%
set /a defensemax=%defensemax%-%defensemax%
set /a health=%health%-%health%
set /a healthmax=%healthmax%-%healthmax%
set /a speed=%speed%-%speed%
set /a speedmax=%speedmax%-%speedmax%
pause
cls
echo Erasing stats....
pause
goto attack

:frontdoor
echo Time to leave!
pause
cls
goto armara_street

:armara_street
echo You breathe in the cool air as you step outside your door.
echo Emerging into the city of Armara, you see vendors selling
echo their goods to all the people. With so much to see and do,
echo anything is possible.
pause
cls
echo What do you want to do?
echo.
echo 1. Go to The Wildfire, the town bar
echo.
echo 2. Go to the Weaponsmith
echo.
echo 3. Trade in the market
echo.
echo 4. Go to your house
echo.
echo 5. Travel to a nearby town
echo.
set /p locationchoice=Choice:
if %locationchoice% equ 1 goto wildfire
if %locationchoice% equ 2 goto armara_weaponsmith
if %locationchoice% equ 3 goto armara_market
if %locationchoice% equ 4 goto armara_home
if %locationchoice% equ 5 goto world_map_armara

:wildfire
cls
echo You open up the door to the Wildfire. As you step inside,
echo you are greeted by a muted welcome from
echo Giancarlo the bartender.
echo You hear a small band playing to the side.
echo Smoke drifts from the fireplace.
pause
cls
goto wildfire_action

:wildfire_action
echo What would you like to do?
echo.
echo 1. Talk to Giancarlo the bartender
echo.
echo 2. Warm yourself by the fire
echo.
echo 3. Order a drink
echo.
echo 4. Leave
echo.
set /p locationchoice_wildfire=Choice:
if %locationchoice_wildfire% equ 1 goto talk_giancarlo1
if %locationchoice_wildfire% equ 2 goto fireplace_wildfire
if %locationchoice_wildfire% equ 3 goto bar_wildfire
if %locationchoice_wildfire% equ 4 goto armara_street

:talk_giancarlo1
cls
color 0a
echo Hello, Giancarlo!
pause
cls
color 0c
echo Hello, %name%!
pause
cls
color 0a
echo So how are things doing in the bar?
pause
cls
color 0c
echo Not well. A stranger comes every day and frightens everyone.
echo I don't know who he is, but he has a black robe and a
echo hauntingly creepy mask.
pause
cls
color 0a
echo That's odd.
pause
cls
color 0c
echo Is there anything you can do to help me?
pause
cls
color 0a
echo I could go hunt for that stranger for you.
pause
cls
color 0c
echo Oh that would be great! Now, about a drink?
echo.
echo 1. Yes please!
echo 2. Nah, maybe later
set /p bar_drink=Choice
if %bar_drink% equ 1 goto buydrink

:buydrink
cls
color 0c
echo Yes please!
pause
cls
if %tipsy% gtr 10 echo Woah, I think you've had enough to drink! Sit and wait a while.
if %tipsy% gtr 10 goto sit_at_armara_bar_stool
color 0a
echo What would you like?
echo.
echo 1. Whiskey
echo.
echo 2. Ale
echo.
echo 3. Rum
echo.
echo 4. Coffee
echo.
echo 5. Nevermind
echo.
set /a buydrink=Drink:
if %buydrink% equ 1 goto buywhiskey
if %buydrink% equ 2 goto buyale
if %buydrink% equ 3 goto buyrum
if %buydrink% equ 4 goto buycoffee
if %buydrink% equ 5 goto nevermind_armara_alcohol

:buywhiskey
color 0a
echo That will be one coin!
pause
cls
set cost=1
if %coin%-%cost% lss 0 goto toomuch
set /a coin=%coin%-%cost%
set /a tipsy=%tipsy%+1
echo Here you go! One fine shot of whiskey!
pause
cls
color 0c
echo Thanks Giancarlo!
pause
cls
color 0a
echo No problem, %name%! Is that all?
echo.
echo 1. Yes
echo.
echo 2. I guess i'll have another drink
echo.
set /p armaratavernchoice1=Choice:
if %armaratavernchoice1% equ 1 (
color 0a
echo See you around!
goto sit_at_armara_bar_stool )
if %armaratavernchoice1% equ 2 goto buydrink

:buyale
color 0a
echo That will be one coin!
pause
cls
set cost=1
if %coin%-%cost% lss 0 goto toomuch
set /a coin=%coin%-%cost%
set /a tipsy=%tipsy%+1
echo Here you go! One fine jug of ale!!
pause
cls
color 0c
echo Thanks Giancarlo!
pause
cls
color 0a
echo No problem, %name%! Is that all?
echo.
echo 1. Yes
echo.
echo 2. I guess i'll have another drink
echo.
set /p armaratavernchoice1=Choice:
if %armaratavernchoice1% equ 1 (
color 0a
echo See you around!
goto sit_at_armara_bar_stool )
if %armaratavernchoice1% equ 2 goto buydrink

:buyrum
color 0a
echo That will be one coin!
pause
cls
set cost=1
if %coin%-%cost% lss 0 goto toomuch
set /a coin=%coin%-%cost%
set /a tipsy=%tipsy%+1
echo Here you go! One fine pint of rum!
pause
cls
color 0c
echo Thanks Giancarlo!
pause
cls
color 0a
echo No problem, %name%! Is that all?
echo.
echo 1. Yes
echo.
echo 2. I guess i'll have another drink
echo.
set /p armaratavernchoice1=Choice:
if %armaratavernchoice1% equ 1 (
color 0c
echo Yes.
pause
cls
color 0a
echo See you around!
goto sit_at_armara_bar_stool )
if %armaratavernchoice1% equ 2 goto buydrink

:buycoffee
color 0a
echo That will be one coin!
pause
cls
set cost=1
if %coin%-%cost% lss 0 goto toomuch
set /a coin=%coin%-%cost%
echo Here you go! One fine mug of coffee!
pause
cls
color 0c
echo Thanks Giancarlo!
pause
cls
color 0a
echo No problem, %name%! Is that all?
echo.
echo 1. Yes
echo.
echo 2. I guess i'll have another drink
echo.
set /p armaratavernchoice1=Choice:
if %armaratavernchoice1% equ 1 (
color 0a
echo See you around!
goto sit_at_armara_bar_stool )
if %armaratavernchoice1% equ 2 goto buydrink

:sit_at_armara_bar_stool
echo You sit at your barstool. You still hear the crackling of fire and you sit back and relax.
pause
cls
echo What will you do?
echo.
echo 1. Sit at the barstool
echo.
echo 2. Get up
echo.
echo 3. Order a drink
echo.
set /p armaratavernchoice_barstool=Choice
if %armaratavernchoice% equ 1 goto sit_at_armara_bar_stool
if %armaratavernchoice% equ 2 goto wildfire_action