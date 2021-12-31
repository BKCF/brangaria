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
if %mainmenuoption% equ 1 goto start
if %mainmenuoption% equ 2 goto newfile
if %mainmenuoption% equ 3 goto tutorial
goto mainmenu

:tutorial
cls
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
color 0f
echo Loading
timeout 10
cls
set weaponexist0=Owned
set currentweapon=Wood
set currentweapon2=Sword
set weaponexist1=none
set weaponexist2=none
set weaponexist3=none
set weaponexist4=none
set weaponexist5=none
set exp=0
set level=0
set set attack=5
set defense=5
set health=5
set healthmax=5
set speed=1
set coin=10
set tipsy=0
set exaustion=0
set hunger=0
set buyweapon=0
set healthgain=0
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
echo You pick up your wooden sword, and walk to the door.
pause
cls
echo Adventure awaits! You shout.
pause
goto armara_street

:armara_street
cls
set location=armara_street
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
echo 6. Check inventory
echo.
set /p locationchoice=Choice:
if %locationchoice% equ 1 goto wildfire
if %locationchoice% equ 2 goto armara_weaponsmith
if %locationchoice% equ 3 goto armara_market
if %locationchoice% equ 4 goto armara_home
if %locationchoice% equ 5 goto world_map_armara
if %locationchoice% equ 6 goto inventory

:armara_weaponsmith
cls
color 0a
echo Hello, weaponsmith!
pause
cls
color 0c
echo Hello, %name%! Call me Johnny.
pause
cls
color 0a
echo Hello Johnny!
pause
cls
color 0c
echo What brings you here?
pause
cls
goto weaponsmith_johnny_choice

:weaponsmith_johnny_choice
cls
color 0a
echo I'm looking to buy something.
pause
cls
color 0c
echo Here is my selection and prices:
echo.
color 0f
echo 0000000000000000000000000000000000000000000000
echo 0           Johnny's Weapon Shop             0
echo 0000000000000000000000000000000000000000000000
echo 0 1. Stone Sword…….    10 coins...100 Attack 0
echo 0 2. Iron Sword.......80 coins....150 Attack 0
echo 0 3. Steel Sword......120 coins...200 Attack 0
echo 0 4. Tunstgen Sword...160 coins...250 Attack 0
echo 0 5. Armarite Sword...200 coins...300 Attack 0
echo 0 6. Leave                                   0
echo 0000000000000000000000000000000000000000000000
echo.
set /p weaponshop=Choice:
if %weaponshop% equ 6 goto leaveweaponshop
goto setwpnstats

:setwpnstats
cls
if %weaponshop% equ 1 (
set weaponchoice=Stone
set weaponchoice2=Sword
set cost=10 )
if %weaponshop% equ 2 (
set weaponchoice=Iron
set weaponchoice2=Sword
set cost=80 )
if %weaponshop% equ 3 (
set weaponchoice=Steel
set weaponchoice2=Sword
set cost=120 )
if %weaponshop% equ 4 (
set weaponchoice=Tunstgen
set weaponchoice2=Sword
set cost=160 )
if %weaponshop% equ 5 (
set weaponchoice=Armarite
set weaponchoice2=Sword
set cost=200 )
goto cnfrmwpn

:cnfrmwpn
cls
pause 0f
echo You really want to buy the %weaponchoice% %weaponchoice2% for %cost% coins?
echo.
echo 1. Yes
echo.
echo 2. No
echo.
set /p cnfrmwpn=Choice: 
if %cnfrmwpn% equ 1 goto getweapon
if %cnfrmwpn% equ 2 goto leaveweapon
goto cnfrmwpn

:getweapon
cls
set location=getweapon
if %coin%-%cost% lss 0 goto notenough
set /a coin=%coin%-%cost%
if %weaponshop% equ 1 (
set attack=100
set weaponexist1=Owned )
if %weaponshop% equ 2 (
set attack=150
set weaponexist2=Owned )
if %weaponshop% equ 3 (
set attack=200
set weaponexist3=Owned )
if %weaponshop% equ 4 (
set attack=250
set weaponexist4=Owned )
if %weaponshop% equ 5 (
set attack=300
set weaponexist5=Owned )
color 0f
echo You bought the %weaponchoice% %weaponchoice2% for %cost% coins.
pause
cls
echo You have %coin% coins left.
goto leaveweaponshop

:notenough
cls
color 0f
echo You don’t have enough money for that!
pause
goto location

:leaveweaponshop
cls
color 0a 
echo Goodbye Johnny...See you later!
pause
cls
color 0c
echo and goodbye to you, %name%!
pause
goto aramra_street

:inventory
cls
color 0f
echo You look inside your bag...
pause
cls
echo 00000000000000000000000000000000
echo 0          Inventory           0
echo 00000000000000000000000000000000
echo 0 1. Food                      0
echo 0 2. Swords                    0
echo 0 3. Keys                      0
echo 0 4. Potions                   0
echo 0 5. Money                     0
echo 0 6. Leave Inventory           0
echo 00000000000000000000000000000000
echo.
set /p inventory=Choice: 
if %inventory% equ 1 goto food_inventory
if %inventory% equ 2 goto swords_inventory
if %inventory% equ 3 goto keys_inventory
if %inventory% equ 4 goto potions_inventory
if %inventory% equ 6 goto %location%
if %inventory% equ 5 goto money_inventory
goto inventory

:food_inventory
cls
color 0f
echo 00000000000000000000000000000000000
echo 0               Food              0
echo 00000000000000000000000000000000000
echo 0 Food.....................%food% 0
echo 00000000000000000000000000000000000
pause
cls
echo Would you like to eat any?
echo.
echo 1. Yes
echo.
echo 2. No
echo.
set /p eatfood=Choice: 
if %eatfood% equ 1 goto eatfood
if %eatfood% equ 2 goto inventory
goto food_inventory

:eatfood
cls
if %food%-1 lss 0 goto notenoughfood
set /a food=%food%-1
set healthgain=%random%*30/32767+5
set /a health=%health%
if %health% gtr %healthmax% set health=%healthmax%
color 0f
echo You gained %healthgain% health.
pause
cls
if %food% equ 0 echo You have no food left.
echo You have %food% left.
pause
goto inventory

:notenoughfood
cls
color 0f
echo You don’t have any food left!
pause
goto inventory

:keys_inventory
cls
color 0f
echo 00000000000000000000000000000000000
echo 0              Keys               0
echo 00000000000000000000000000000000000
echo 0 Wooden Key..........%keyowned1% 0
echo 0 Iron Key............%keyowned2% 0
echo 0 Gold Key............%keyowned3% 0
echo 0 Platinum Key........%keyowned4% 0
echo 0 Particle Key........%keyowned5% 0
echo 00000000000000000000000000000000000
pause
goto inventory

:money_inventory
cls
color 0f
echo 00000000000000000000000000000000000
echo 0              Coins              0
echo 00000000000000000000000000000000000
echo 0 Coins....................%coin% 0
echo 00000000000000000000000000000000000
pause
goto inventory

:swords_inventory
cls
echo 00000000000000000000000000000000000
echo 0              Swords             0
echo 00000000000000000000000000000000000
echo 0 Stone Sword      %weaponexist1% 0
echo 0 Iron Sword       %weaponexist2% 0
echo 0 Steel Sword      %weaponexist3% 0
echo 0 Tunstgen Sword   %weaponexist4% 0
echo 0 Armarite Sword   %weaponexist5% 0
echo 00000000000000000000000000000000000
echo 0     Would You Like To...        0
echo 00000000000000000000000000000000000
echo 0 1. Equip Weapons                0
echo 0 2. Back to Inventory            0
echo 00000000000000000000000000000000000      
echo.
set /p swordequip=Choice: 
if %swordequip% equ 1 goto wpneqp
if %swordequip% equ 2 goto inventory
goto swords_inventory

:wpneqp
cls
color 0f
echo You currently have the %weaponchoice% %weaponchoice2% equipped.
echo.
echo What do you want to equip?
echo.
echo 00000000000000000000000000000000000000
echo 0              Swords                0
echo 00000000000000000000000000000000000000
echo 0 1. Stone Sword      %weaponexist1% 0
echo 0 2. Iron Sword       %weaponexist2% 0
echo 0 3. Steel Sword      %weaponexist3% 0
echo 0 4. Tunstgen Sword   %weaponexist4% 0
echo 0 5. Armarite Sword   %weaponexist5% 0
echo 0 6. Keep Current Weapon             0
echo 00000000000000000000000000000000000000
echo.
set /p wpneqp=Choice: 
if %wpneqp% equ 1 (
if %weaponexist1% equ none goto noweapon
set currentwpn=Stone
set currentwpn2=Sword
set attack=100 )
if %wpneqp% equ 2 (
if %weaponexist2% equ none goto noweapon
set currentwpn=Iron
set currentwpn=Sword
set attack=150 )
if %wpneqp% equ 3 (
if %weaponexist3% equ none goto noweapon
set currentwpn=Steel
set currentwpn2=Sword
set attack=200 )
if %wpneqp% equ 4 (
if %weaponexist4% equ none goto noweapon
set currentwpn=Tunstgen
set currentwpn2=Sword
set attack=250 )
if %wpneqp% equ 5 (
if %weaponexist5% equ none goto noweapon
set currentwpn=Armarite
set currentwpn2=Sword
set attack=300 )
if %wpneqp% equ 6 (
set currentwpn=%currentwpn%
set currentwpn2=%currentwpn2% )
cls
echo You have equipped the %currentwpn% %currentwpn2%.
pause
goto inventory

:noweapon
cls
color 0c
echo You do not own that weapon!
pause
cls
color 0f
goto wpneqp

:wildfire
cls
set location=wildfire
color 0f
echo You open up the door to the Wildfire. As you step inside,
echo you are greeted by a muted welcome from 
echo Giancarlo the bartender. 
echo Smoke and conversation drifts from the fireplace.
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
echo 2. Sit by the fire
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
if %vampquest% equ 1 goto talk_giancarlo2
set vampquest=1
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

:talk_giancarlo2
goto wildfire_action

:getadrink
cls
color 0c
echo Would you like a drink?
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
echo See you around, %name%!
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
if %armaratavernchoice_barstool% equ 1 goto sit_at_armara_bar_stool
if %armaratavernchoice_barstool% equ 2 goto wildfire_action
if %armaratavernchoice_barstool% equ 3 goto getadrink
goto sit_at_armara_bar_stool

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
if %wildfire_fireplace_option1% equ 2 goto fireplace_wildfire
if %wildfire_fireplace_option1% equ 3 goto wildfire_action
goto fireplace_wildfire

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
echo ripped muscles. His knee appears to be crippled.
echo He holds a poker and is sitting by a pile of firewood.
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
echo Any tips on how to find adventure?
pause
cls
color 0c
echo Yes! I used to be an adventurer, just like you.
echo But then I took an arrow to the knee.
pause
cls
echo The best way is to simply go and find it. Explore.
echo Discover. Break a rule or two. When you find 
echo adventure, you'll know it.
pause 
cls
color 0a
echo Thank you. I'll always remember that, Ethan.
pause
cls
goto talkethan

:ethan_conversation_leave
color 0a
echo It was nice to see you, Ethan!
pause
cls
color 0c
echo And you too, %name%! Stay safe on your travels!
pause
cls
goto fireplace_wildfire