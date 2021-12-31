@echo off
mode 10000

:main
cls
color 0f
echo Temporary Main Menu
echo.
echo 1. Login
echo 2. Make an account
echo.
set /p menu1= 
if '%menu1%' equ '1' goto login
if '%menu1%' equ '2' goto createuser
cls
color 0c
echo Not a valid input
pause>nul
color 0f
goto main

:createuser
cls
echo What would you like your Username to be?
set /p username1= 
echo.
echo What would you like your Password to be?
set /p password1= 
set destination=start
goto savegame

:login
cls
set /p name1=Username: 
if not exist "%name1%.bat" (
echo That is not a valid Username.
pause>nul
goto main
)
set /p pass1=Password: 
call %name1%.bat
if not %password1% EQU %pass1% (
echo That is not a valid Password.
pause>nul
goto main
)
goto start

:start
call %name1%.bat
if %gen% equ 1 goto entergame
set charlevel=1
set classlevel=1
cls
echo Welcome to the land of Brangaria, where anything can happen, from magic to eathquakes,
echo from meeting your best friend to your worst enemy. The only limits are the choices you make.
echo.
pause>nul
cls
echo But before you begin, you have to exist! Time to create yourself!
echo.
echo PROTIP:
echo Here are all of the categories:
echo.
echo Gender
echo Name
echo Age
echo Skills
echo Race
echo Class
echo.
pause>nul
goto gender

:gender
cls
echo GENDER
echo.
echo What will your character's gender be? [Male/Female]
echo.
set /p gender=Gender: 
if '%gender%' equ 'M' goto male
if '%gender%' equ 'm' goto male
if '%gender%' equ 'Male' goto male
if '%gender%' equ 'male' goto male
if '%gender%' equ 'female' goto female
if '%gender%' equ 'Female' goto female
if '%gender%' equ 'f' goto female
if '%gender%' equ 'F' goto female
cls
color 0c
echo Not a valid input
pause>nul
color 0f
goto gender

:male
set g=male
set g2=boy
set g3=man
goto name

:female
set g=female
set g2=girl
set g3=woman
goto name

:name
cls
echo NAME
echo.
echo What is your name?
echo.
set /p name=
goto race_restart

:race_restart
cls
set str_r=0
set ss_r=0
set speed_r=0
set con_r=0
set memory_r=0
set dex_r=0
set as_r=0
set perception_r=0
set stealth_r=0
set survival_r=0
:race
cls
color 0f
echo RACE
echo.
echo Your race is what species you are. Different races will get different skill bonuses.
echo People will tend to not be as admitting to players of other races. Choose wisely.
echo.
echo CLASSIC RACES
echo.
echo 1. Orc           +2 Strength      +1 Constitution
echo.
echo 2. Elf           +2 Agility       +1 Animal Skills
echo.
echo 3. Human         +2 Dexterity     +1 Social Skills
echo.
echo 4. Dwarf         +2 Constitution  +1 Memory
echo.
echo UNCOMMON RACES
echo.
echo 5. Dragon Child  +2 Speed         +1 Survival
echo.
echo 6. Silent        +2 Stealth       +1 Dexterity
echo.
echo 7. Pixie         +2 Animal Skills +1 Perception
echo.
echo 8. Demon         +3 Social Skills
echo.
set /p racechoice=Race: 
if '%racechoice%' equ '1' set race=Orc
if '%racechoice%' equ 'orc' set race=Orc
if '%racechoice%' equ 'Orc' set race=Orc
if '%racechoice%' equ '2' set race=Elf
if '%racechoice%' equ 'elf' set race=Elf
if '%racechoice%' equ 'Elf' set race=Elf
if '%racechoice%' equ '3' set race=Human
if '%racechoice%' equ 'human' set race=Human
if '%racechoice%' equ 'Human' set race=Human
if '%racechoice%' equ '4' set race=Dwarf
if '%racechoice%' equ 'dwarf' set race=Dwarf
if '%racechoice%' equ 'Dwarf' set race=Dwarf
if '%racechoice%' equ '5' set race=dragon child
if '%racechoice%' equ 'Dragonchild' set race=Dragon Child
if '%racechoice%' equ 'dragonchild' set race=Dragon Child
if '%racechoice%' equ 'dragon child' set race=Dragon Child
if '%racechoice%' equ 'Dragon Child' set race=Dragon Child
if '%racechoice%' equ 'Dragon child' set race=Dragon Child
if '%racechoice%' equ '6' set race=Silent
if '%racechoice%' equ 'silent' set race=Silent
if '%racechoice%' equ 'Silent' set race=Silent
if '%racechoice%' equ '7' set race=Pixie
if '%racechoice%' equ 'Pixie' set race=Pixie
if '%racechoice%' equ 'Pixie' set race=Pixie
if '%racechoice%' equ '8 set' race=Demon
if '%racechoice%' equ 'demon' set race=Demon
if '%racechoice%' equ 'Demon' set race=Demon

if race equ Orc (
set ert=1
set race_plural=Orcs
set str_r=2
set con_r=1
goto racefinal )

if race equ Elf (
set ert=1
set race_plural=Elves
set /a speed_r=2
set /a as_r=1
goto racefinal )

if race equ Human (
set race_plural=Humans
set /a dex_r=2
set /a ss_r=1
goto racefinal )

if race equ Dwarf (
set race_plural=Dwarves
set /a con_r=2
set /a memory_r=1
goto racefinal )

if race equ Dragon Child (
set race_plural=Dragon Children
set /a speed_r=2
set /a survival_r=1
goto racefinal )

if race equ Silent (
set race_plural=Silence
set /a stealth_r=2
set /a dex_r=1
goto racefinal )

if race equ Pixie (
set race_plural=Pixies
set /a as_r=2
set /a perception_r=1
goto racefinal )

if race equ Demon (
set race_plural=Demons
set /a ss_r=3
goto racefinal )

cls
color 0c
echo Not a valid input
pause>nul
goto race

:racefinal
cls
color 0f
if ert equ 1 (
echo You have chosen to be an %race%. Is this what you want [Y/N]?
echo.
set /p yn=
if '%yn%' equ 'N' goto race_restart
if '%yn%' equ 'n' goto race_restart
if '%yn%' equ 'y' goto skillstart
if '%yn%' equ 'Y' goto skillstart
cls
color 0c
echo Not a valid input
pause>nul
goto racefinal )

color 0f
echo You have chosen to be a %race%. Is this what you want [Y/N]?
echo.
set /p yn=
if '%yn%' equ 'N' goto race_restart
if '%yn%' equ 'n' goto race_restart
if '%yn%' equ 'y' goto skillstart
if '%yn%' equ 'Y' goto skillstart
cls
color 0c
echo Not a valid input
pause>nul
goto racefinal )
 

:skillstart
cls
set /a str=5+%str_r%
set /a ss=5+%ss_r%
set /a speed=5+%speed_r%
set /a con=5+%con_r%
set /a memory=5+%memory_r%
set /a dex=5+%dex_r%
set /a as=5+%as_r%
set /a perception=5+%perception_r%
set /a stealth=5+%stealth_r%
set /a survival=5+%survival_r%
set skillpts=10
:skillgen
cls
color 0f
echo SKILLS
echo.
echo Here you choose how your character is built. Each skill value determines what you can do.
echo.
echo To add points to a skill, type the name or corresponding number and hit enter. 5 is considered average.
echo.
echo Pressing enter will add points to the most recently upgraded skill.
echo.
echo To finish, type "done" or use all of your skill points. %skillpts% Skill Points remaining.
echo.
echo 1.  Strength           %str%             Your physical ability and how powerful you are    
echo.    
echo 2.  Social Skills      %ss%              How well you can interact with NPC's
echo.
echo 3.  Speed              %speed%           How fast you can move 
echo.
echo 4.  Constitution       %con%             How long you can stand up to pain before breaking
echo.
echo 5.  Memory             %memory%          The time you can remember places before they fade from memory
echo.
echo 6.  Dexterity          %dex%             How effectively or delicately you can interact with light weapons and mechanisms
echo.
echo 7.  Animal Skills      %as%              How well you interact with animals and vice versa
echo.
echo 8.  Perception         %perception%      How you interpret the world around you and how much you notice
echo.
echo 9.  Stealth            %stealth%         How effectively you can hide and sneak
echo.
echo 10. Survival           %survival%        How well you can forage, build shelters, and hunt
echo.
set /p skillchoice=Skill to add points to: 
if '%skillchoice%' equ '1' goto str_gen
if '%skillchoice%' equ 'str' goto str_gen
if '%skillchoice%' equ 'Str' goto str_gen
if '%skillchoice%' equ 'strength' goto str_gen
if '%skillchoice%' equ 'Strength' goto str_gen
if '%skillchoice%' equ '2' goto ss_gen
if '%skillchoice%' equ 'ss' goto ss_gen
if '%skillchoice%' equ 'SS' goto ss_gen
if '%skillchoice%' equ 'Social skills' goto ss_gen
if '%skillchoice%' equ 'social skills' goto ss_gen
if '%skillchoice%' equ 'Social Skills' goto ss_gen
if '%skillchoice%' equ 'social Skills' goto ss_gen
if '%skillchoice%' equ 'socialskills' goto ss_gen
if '%skillchoice%' equ 'Socialskills' goto ss_gen
if '%skillchoice%' equ '3' goto spd_gen
if '%skillchoice%' equ 'spd' goto spd_gen
if '%skillchoice%' equ 'speed' goto spd_gen
if '%skillchoice%' equ 'Speed' goto spd_gen
if '%skillchoice%' equ 'Spd' goto spd_gen
if '%skillchoice%' equ '4' goto con_gen
if '%skillchoice%' equ 'con' goto con_gen
if '%skillchoice%' equ 'Con' goto con_gen
if '%skillchoice%' equ 'constitution' goto con_gen
if '%skillchoice%' equ 'Constitution' goto con_gen
if '%skillchoice%' equ '5' goto mem_gen
if '%skillchoice%' equ 'mem' goto mem_gen
if '%skillchoice%' equ 'Mem' goto mem_gen
if '%skillchoice%' equ 'memory' goto mem_gen
if '%skillchoice%' equ 'Memory' goto mem_gen
if '%skillchoice%' equ '6' goto dex_gen
if '%skillchoice%' equ 'dex' goto dex_gen
if '%skillchoice%' equ 'dexterity' goto dex_gen
if '%skillchoice%' equ 'Dex' goto dex_gen
if '%skillchoice%' equ 'Dexterity' goto dex_gen
if '%skillchoice%' equ '7' goto as_gen
if '%skillchoice%' equ 'as' goto as_gen
if '%skillchoice%' equ 'As'goto as_gen
if '%skillchoice%' equ 'Animal Skills' goto as_gen
if '%skillchoice%' equ 'animalskills' goto as_gen
if '%skillchoice%' equ 'Animalskills' goto as_gen
if '%skillchoice%' equ 'Animal skills' goto as_gen
if '%skillchoice%' equ 'animal skills' goto as_gen
if '%skillchoice%' equ 'AnimalSkills' goto as_gen
if '%skillchoice%' equ '8' goto perception_gen
if '%skillchoice%' equ 'perception' goto perception_gen
if '%skillchoice%' equ 'Perception' goto perception_gen
if '%skillchoice%' equ '9' goto stealth_gen
if '%skillchoice%' equ 'stealth' goto stealth_gen
if '%skillchoice%' equ 'Stealth' goto stealth_gen
if '%skillchoice%' equ 'stl' goto stealth_gen
if '%skillchoice%' equ 'Stl' goto stealth_gen
if '%skillchoice%' equ '10' goto survival_gen
if '%skillchoice%' equ 'surv' goto survival_gen
if '%skillchoice%' equ 'Surv' goto survival_gen
if '%skillchoice%' equ 'survival' goto survival_gen
if '%skillchoice%' equ 'Survival' goto survival_gen
cls
color 0c
echo Not a valid input
pause>nul
goto skillgen

:str_gen
set error=Strength
set /a str=%str%+1
set /a skillpts=%skillpts%-1
goto pointcheck 

:ss_gen
set error=Social skills
set /a ss=%ss%+1
set /a skillpts=%skillpts%-1
goto pointcheck 

:spd_gen
set error=speed
set /a speed=%speed%+1
set /a skillpts=%skillpts%-1
goto pointcheck
 
:con_gen
set error=Constitution
set /a con=%con%+1
set /a skillpts=%skillpts%-1
goto pointcheck 

:mem_gen
set error=Memory
set /a memory=%memory%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:dex_gen
set error=Dexterity
set /a dex=dex%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:as_gen
set error=Animal Skills
set /a as=%as%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:percption_gen
set error=Perception
set /a perception=%perception%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:stealth_gen
set error=Stealth
set /a stealth=%stealth%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:survival_gen
set error=Survival
set /a survival=%survival%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:pointcheck
if %skillpts% leq 0 goto skills_final
goto skillgen

:skills_final
cls
color 0f
echo FINAL SKILLS
echo.
echo Here are your final skills:
echo.
echo 1.  Strength           %str%
echo 2.  Social Skills      %ss%
echo 3.  Speed              %speed%
echo 4.  Constitution       %con%
echo 5.  Memory             %memory%
echo 6.  Dexterity          %dex%
echo 7.  Animal Skills      %as%
echo 8.  Perception         %perception%
echo 9.  Stealth            %stealth%
echo 10. Survival           %survival%
echo.
echo Do you want to keep these skill levels? [Y/N]?
echo.
set /p yn=
if '%yn%' equ 'y' goto class
if '%yn%' equ 'Y' goto class
if '%yn%' equ 'n' goto resetskills
if '%yn%' equ 'N' goto resetskills
goto main

:resetskills
cls
color 0f
echo RESET SKILLS
echo.
echo Are you sure you want to re-select your skills [Y/N]?
echo This will be a permanent change.
echo.
set /p yn=
if '%yn%' equ 'y' goto skillstart
if '%yn%' equ 'Y' goto skillstart
if '%yn%' equ 'n' goto skills_final
if '%yn%' equ 'N' goto skills_final
cls
color 0c
echo Not a valid input
pause>nul
color 0f
goto resetskills

:class
cls
color 0f
echo CLASS
echo.
echo Choose your class. Your class is the archetype you have trained in and gives you specific combat bonuses.
echo.
echo Each class also has a unique skill.
echo.
echo 1. Warrior         +2 melee attack bonus per level up     During combat, you can go berserk, giving you a damage increase equal to double your character level
echo.
echo 2. Rogue           +2 sneak attack bonus per level up     When trying to hide, you get a +10 bonus to stealth
echo.
echo 3. Mage            +2 magic attack bonus per level up     You automatically identify a magic item's properties upon touching it
echo.
echo 4. Ranger          +2 ranged attack bonus per level up    You pick up a random amount of consumed ammunition at the end of a battle
echo.
echo 5. Cleric          +5 HP heal bonus per level up          You can heal a party member as an attack option each turn
echo.
echo NOTE: Mages can heal, but only with pre-prepared spells. Clerics can cast them instantaneously.
echo.
set /p classchoice=Choice: 
if '%classchoice%' equ '1' goto warrior_gen
if '%classchoice%' equ 'warrior' goto warrior_gen
if '%classchoice%' equ 'Warrior' goto warrior_gen
if '%classchoice%' equ '2' goto rogue_gen
if '%classchoice%' equ 'rogue' goto rogue_gen
if '%classchoice%' equ 'Rogue' goto rogue_gen
if '%classchoice%' equ 'rouge' goto rogue_gen
if '%classchoice%' equ 'Rouge' goto rogue_gen
if '%classchoice%' equ '3' goto mage_gen
if '%classchoice%' equ 'mage' goto mage_gen
if '%classchoice%' equ 'Mage' goto mage_gen
if '%classchoice%' equ '4' goto ranger_gen
if '%classchoice%' equ 'ranger' goto ranger_gen
if '%classchoice%' equ 'Ranger' goto ranger_gen
if '%classchoice%' equ '5' goto cleric_gen
if '%classchoice%' equ 'cleric' goto cleric_gen
if '%classchoice%' equ 'Cleric' goto cleric_gen
if '%classchoice%' equ 'datboi' goto datboi_gen
cls
color 0c
echo Not a valid input
pause>nul
goto class

:warrior_gen
set class=warrior
set class_plural=warriors
set class_caps=Warrior
set class_caps_plural=Warriors
set melee_bonus=2
set berserk=true
set berserk_bonus=2*%charlevel%
set sneak_bonus=0
set hide_bonus=0
set magic_bonus=0
set magic_identify_time=3
set ranged_bonus=0
set ammo_pickup=false
set heal_bonus=0
set can_heal=false
goto classfinal


:rogue_gen
set class=rogue
set class_plural=rogues
set class_caps=Rogues
set class_caps_plural=rogues
set melee_bonus=0
set berserk=false
set berserk_bonus=0
set sneak_bonus=2
set hide_bonus=10
set magic_bonus=0
set magic_identify_time=3
set ranged_bonus=0
set ammo_pickup=false
set heal_bonus=0
set can_heal=false
goto classfinal


:mage_gen
set class=mage
set class_plural=mages
set class_caps=Mage
set class_caps_plural=Mages
set melee_bonus=0
set berserk=false
set berserk_bonus=0
set sneak_bonus=0
set hide_bonus=0
set magic_bonus=2
set magic_identify_time=0
set ranged_bonus=0
set ammo_pickup=false
set heal_bonus=0
set can_heal=true
goto classfinal


:ranger_gen
set class=ranger
set class_plural=rangers
set class_caps=Ranger
set class_caps_plural=Rangers
set melee_bonus=0
set berserk=false
set berserk_bonus=0
set sneak_bonus=0
set hide_bonus=0
set magic_bonus=0
set magic_identify_time=3
set ranged_bonus=2
set ammo_pickup=true
set heal_bonus=0
set can_heal=false
goto classfinal


:cleric_gen
set class=cleric
set class_plural=clerics
set class_caps=Cleric
set class_caps_plural=Clerics
set melee_bonus=0
set berserk=false
set berserk_bonus=0
set sneak_bonus=0
set hide_bonus=0
set magic_bonus=0
set magic_identify_time=3
set /ranged_bonus=0
set ammo_pickup=false
set heal_bonus=5
set can_heal=true
goto classfinal

:datboi_gen
cls
color 0a
echo HERE COMES DAT BOI (OH S**T WADDUP)
start datboi.png
pause>nul
goto class

:classfinal
cls
color 0f
echo FINAL CLASS
echo. 
echo You have chosen to be a %class%. Is this what you want [Y/N]?
echo.
set /p yn=
if '%yn%' equ 'y' goto gen_final
if '%yn%' equ 'Y' goto gen_final
if '%yn%' equ 'n' goto class
if '%yn%' equ 'N' goto class
cls
color 0c
echo Not a valid input
pause>nul
goto :classfinal



:gen_final
cls
color 0f
echo FINAL PAGE
echo.
echo You are %name%, a %g% %race% %class%. You have the following skills:
echo.
echo Strength           %str%
echo Social Skills      %ss%
echo Speed              %speed%
echo Constitution       %con%
echo Memory             %memory%
echo Dexterity          %dex%
echo Animal Skills      %as%
echo Perception         %perception%
echo Stealth            %stealth%
echo Survival           %survival%
echo.
echo Is this what you want? There's no going back once you say yes or no [Y/N].
echo.
set /p yn=
if '%yn%' equ 'y' (
set gen=1
goto savegame )
if '%yn%' equ 'Y' (
set gen=1
goto savegame )
if '%yn%' equ 'n' goto you_sure
if '%yn%' equ 'N' goto you_sure

:you_sure
cls
color 0c
echo Are you sure? By resetting, you will have to redo the entire generation progress again [Y/N].
pause
set /p yn=
if %yn% equ y goto start
if %yn% equ Y goto start
if %yn% equ n goto gen_final
if %yn% equ N goto gen_final


:savegame
(
echo set username1=%username1%
echo set password1=%password1%
echo set str=%str%
echo set ss=%ss%
echo set speed=%speed%
echo set con=%con%
echo set memory=%memory%
echo set dex=%dex%
echo set as=%as%
echo set perception=%perception%
echo set stealth=%stealth%
echo set survival=%survival%
echo set str_r=%str_r%
echo set ss_r=%ss_r%
echo set speed_r=%speed_r%
echo set con_r=%con_r%
echo set memory_r=%memory_r%
echo set dex_r=%dex_r%
echo set as_r=%as_r%
echo set perception_r=%perception_r%
echo set stealth_r=%stealth_r%
echo set survival_r=%survival_r%
echo set name=%name%
echo set race=%race%
echo set race_plural=%race_plural%
echo set g=%g%
echo set g2=%g2%
echo set g3=%g3%
echo set gen=%gen%
echo set class=%class%
echo set class_caps=%class_caps%
echo set melee_bonus=%melee_bonus%
echo set berserk=%berserk%
echo set berserk_bonus=%berserk_bonus%
echo set sneak_bonus=%sneak_bonus%
echo set hide_bonus=%hide_bonus%
echo set magic_bonus=%magic_bonus%
echo set magic_identify_time=%magic_identify_time%
echo set ranged_bonus=%ranged_bonus%
echo set ammo_pickup=%ammo_pickup%
echo set heal_bonus=%heal_bonus%
echo set can_heal=%can_heal%
)>%username1%.bat
goto %destination%

:entergame
cls
echo Yo waddup?
pause
end