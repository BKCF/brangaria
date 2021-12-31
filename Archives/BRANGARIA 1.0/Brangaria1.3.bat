@echo off
color 0f

:mainmenu
cls
echo.
echo 00000000000000000000000000
echo 0                        0
echo 0       Brangaria        0
echo 0                        0
echo 0    1. File Select      0
echo 0    2. New File         0
echo 0    3. Tutorial         0
echo 0                        0
echo 0    By:Angelo Culotta   0
echo 0         v 1.0          0
echo 00000000000000000000000000
echo.
set /p mainmenuoption=
if %mainmenuoption% equ 1 goto fileselect
if %mainmenuoption% equ 2 goto newfile
if %mainmenuoption% equ 3 goto tutorial

:tutorial
echo Here is where you go if you are having issues,
echo or just need a tutorial.
pause
cls
echo Welcome to the land of Brangaria, a land of mystery,
echo surprise, and adventure. And you (yes you) are in the
echo driver seat.
pause
cls
echo Here is a list of many things you may need to learn
echo or need help with to play this game.

:start
set attack=0
set attackmax=0
set defense=0
set defensemax=0
set health=0
set healthmax=0
set speed=0
set speedmax=0
set tokens=10
set coin=25
set tipsy=0
set exaustion=0
set arm=ok
echo Hello! Welcome to the world of Brangaria!
pause
cls
echo What is your name?
set /p name=Name:
cls
echo Hello, %name%!
pause
cls
echo As a hero in training, you will accept the path of adventure,
echo face the danger, and go off the beaten path.
pause
cls
echo In order to be a hero, you need some stats! You can upgrade attack, defense, health, and speed.
pause
cls
echo Here are 10 tokens, spend them as you wish!
pause
cls
goto Attack

:attack
cls
set /p buyattack=Attack:
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
set /a tokens=%tokens%-%buyspeed%
set /a speed=%speed%+%buyspeed%
set /a speedmax=%speedmax%+%buyspeed%
set /a buyspeed=%buyspeed%-%buyspeed%
echo You have %tokens% tokens left.
pause 
cls
goto statcheck

:statcheck
cls
if %buyspeed%+%buyattack%+%buyhealth%+%buydefense% gtr 11 goto cheater
echo Your stats are...
echo Attack...........%attackmax%
echo Defense..........%defensemax%
echo Health...........%healthmax%
echo Speed............%speedmax%
goto frontdoor

:cheater
cls
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
cls
goto attack

:frontdoor
cls
echo Time to leave!
pause
cls
goto armara_street

:armara_street
cls
color 0f
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
color 0f
echo You open up the door to the Wildfire. As you step inside,
echo you are greeted by a muted welcome from 
echo Giancarlo the bartender. 
echo You hear a small band playing to the side. 
echo Smoke drifts from the fireplace.
pause
cls 
goto wildfire_action

:wildfire_action
cls
color 0f
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
if %locationchoice_wildfire% equ 3 goto getadrink_wildfire
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
echo Oh that would be great! Thank you so much! 
pause
cls
color 0a 
echo No problem. See you around, Giancarlo!
pause
cls
goto wildfire_action


:getadrink
cls
color 0c
echo Now, about a drink?
echo.
echo 1. Yes please!
echo 2. Nah, maybe later
set /p bar_drink=Choice
if %bar_drink% equ 1 goto buydrink
if %bar_drink% equ 1 goto sit_at_armara_bar_stool
goto getadrink

:buydrink
cls
color 0a
echo Yes please!
pause
cls
if %tipsy% gtr 10 (
color 0c
echo Woah, I think you've had enough to drink! Sit and wait a while. 
pause
cls
if %tipsy% gtr 10 goto sit_at_armara_bar_stool )
color 0c
echo What would you like?
color 0f
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
cls
color 0f
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
color 0f
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
cls
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
cls
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
color 0f
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
cls
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
color 0f
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

:nevermind_armara_alcohol
cls
color 0a
echo No thanks.
pause
cls
color 0c
echo See you around!
pause
cls
goto sit_at_armara_bar_stool

:sit_at_armara_bar_stool
cls
color 0f
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
if %armaratavernchoice% equ 3 goto 

:fireplace_wildfire
cls
color 0f
echo You sit by the crackling fireplace.
pause
cls
echo What will you do?
echo.
echo 1. Chat with the members around the fire
echo.
echo 2. Sit silently
echo.
echo 3. Get up and leave
echo.
set /p wildfire_fireplace_option1=Choice:
if %wildfire_fireplace_option1% equ 1 goto talkfireplacewildfire

:talkfireplacewildfire
cls
color 0f
echo Who would you like to talk to?
echo.
echo 1. The Firetender
echo.
echo 2. The Soldier
echo.
echo 3. The Peasant
echo. 
echo 4. No one
echo.
set /p wildfirefireplace_talk=Choice:
if %wildfirefireplace_talk% equ 1 goto talkfiretender
if %wildfirefireplace_talk% equ 2 goto talksoldier_wildfire
if %wildfirefireplace_talk% equ 3 goto talkpesant_wildfire
if %wildfirefireplace_talk% equ 4 goto fireplace_wildfire
goto talkfireplacewildfire

:talkfiretender
color 0f
echo You lean over to the massive figure of the firetender.
echo He has an enormous mustache, a chisled face, and 
echo ripped muscles. He holds a poker and is sitting by a 
echo pile of firewood.
pause
cls
color 0a
echo Hello!
pause
cls
color 0c
echo And who may you be?
pause 
cls
color 0a
echo I'm %name%.
pause
cls
color 0c
echo Hello, %name%. I'm Ethan.
pause
cls
color 0a
echo Hello, Ethan!
pause
cls
goto talkethan

:talkethan
cls
color 0f
echo What would you like to say to Ethan?
echo.
echo 1. How is living around here?
echo.
echo 2. Did you have a good meal?
echo.
echo 3. I like your mustache.
echo.
echo 4. Any tips on how to find adventure?
echo.
echo 5. Leave the conversation
echo.
set /p talkethan=Choice:
if %talkethan% equ 1 goto ethan_living
if %talkethan% equ 2 goto ethan_meal
if %talkethan% equ 3 goto ethan_mustache
if %talkethan% equ 4 goto ethan_adventure
if %talkethan% equ 5 goto ethan_leave_conversation
goto talkethan

:ethan_living
cls
color 0a
echo How is it living around here?
pause 
cls
color 0c
echo Fine, I guess. As you know, there are the usual 
echo brigands, bandits, and bad guys. But those are
echo few and far apart.
pause
cls
echo My income at the farm is enough to cover our expenses, but 
echo enough of this. Living is good, and i'll take that any day.
pause
cls
color 0a
echo Nice to know all is well here in Armara City.
pause
cls
color 0c
echo Well....nevermind.
pause
cls
color 0a
echo What?
pause
cls
color 0c 
echo Nothing. Just move on.
pause
cls
color 0a
echo Okay.
pause
cls
goto talkethan

:ethan_meal
cls
color 0a
echo How was your meal?
pause
cls
color 0c
echo Oh, it was very good! The nicest lamb i've ever tasted! They
echo have it served every night.
pause
cls 
goto talkethan

:ethan_mustache
cls
color 0a 
echo I like your mustache.
pause
cls
color 0c
echo Why thank you! I often say it's the best in all the land!
pause
cls
color 0a
echo Oh really?
pause
cls
color 0c
echo Why yes! I call him George!
pause
cls
color 0a
echo Okay....
pause
cls
goto talkethan

:ethan_adventure
cls
color 0a
echo any tips on how to find adventure?