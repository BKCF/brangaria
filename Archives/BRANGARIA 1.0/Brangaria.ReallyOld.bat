@echo off

set attack=0
set attackmax=0
set defense=0
set defensemax=0
set health=0
set healthmax=0
set tokens=10
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
echo In order to be a hero, you need a bit of gear!
pause
cls
echo Here are 10 tokens, spend them as you wish!
pause
goto shop

:shop
echo Hello! Welcome to the shop! You can upgrade your stats here.
pause 
cls
echo You currently have %tokens% tokens remaining.
pause
cls
echo You can upgrade attack, defense, and health stats here.
pause
cls
goto choice

:choice
echo 1. Attack.......1 token  +1 Attack
echo 2. Defense......1 token  +1 Defense
echo 3. Health.......2 tokens +20 Health
echo.
echo What would you like to upgrade?
set /p choice=
if /p choice equ 1 set purchase=attack
if /p choice equ 1 goto purchase
if /p choice equ 2 set purchase=defense
if /p choice equ 2 goto purchase
if /p choice equ 3 set purchase=health
if /p choice equ 3 goto purchase
goto choice

:purchase
if purchase=attack set cost=1
if purchase=defense set cost=1
if purchase=health set cost=2
if %tokens% lss 1 set cost=0
if %tokens% lss 1 goto notenough
if purchase=attack set /a tokens=%tokens%-%cost%
if purchase=defense set /a tokens=%tokens%-%cost%
if purchase=health set /a tokens=%tokens%-%cost%
if %tokens% lss 1 set cost=null
if %tokens% lss 1 goto notenough
if purchase=attack set /a attack=%attack%+1
if purchase=attack set /a attackmax=%attackmax%+1
if purchase=defense set /a defense=%defense%+1
if purchase=defense set /a defensemax=%defensemax%+1
if purchase=health set /a health=%health%+20
if purchase=health set /a healthmax=%healthmax%+20
if purchase=health echo Your max health is now %healthmax%!
if purchase=defense echo Your max defense is now %maxdefense%!
if purchase=attack echo Your max attack is now %maxattack%!
set cost=0
pause
echo What next?
echo.
echo 1. Keep shopping
echo.
echo 2. Start your adventure
set /p location:
if %location% equ 1 goto tokencheck
if %location% equ 2 goto frontdoor

:tokencheck
if %tokens% lss 1 goto notenough
goto shop

:notenough
echo You do not have enough money for that!
goto choice

:frontdoor
echo Time to leave!
pause
goto outsidedoor

:outsidedoor








