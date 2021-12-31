@echo off
MODE CON COLS=999 LINES=999
goto race_restart
:main
color 0f
echo Temporary Main Menu
echo 1. Start One-Shot Game
echo 2. Login
echo 3. Make an account
set /p menu1= 
if '%menu1%' equ '1' goto start
goto main

:start
cls
echo Welcome to the land of Brangaria, where anything can happen, from magic to eathquakes,
echo from meeting your best friend to your worst enemy. The only limits are the choices you make.
echo.
pause>nul
cls
echo But before you begin, you have to exist! Time to create yoursElf!
echo.
echo PROTIP:
echo Here are all of the categories:
echo.
echo Gender
echo Name
echo Age
echo Height
echo Weight
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
set /p racechoice=
if '%racechoice%' equ 1 set race=Orc
if '%racechoice% equ orc set race=Orc
if '%racechoice% equ Orc set race=Orc
if '%racechoice% equ 2 set race=Elf
if '%racechoice% equ elf set race=Elf
if %racechoice% equ Elf set race=Elf
if %racechoice% equ 3 set race=Human
if %racechoice% equ human set race=Human
if %racechoice% equ Human set race=Human
if %racechoice% equ 4 set race=Dwarf
if %racechoice% equ dwarf set race=Dwarf
if %racechoice% equ Dwarf set race=Dwarf
if %racechoice% equ 5 set race=dragon child
if %racechoice% equ Dragonchild set race=Dragon Child
if %racechoice% equ dragonchild set race=Dragon Child
if %racechoice% equ dragon child set race=Dragon Child
if %racechoice% equ Dragon Child set race=Dragon Child
if %racechoice% equ Dragon child set race=Dragon Child
if %racechoice% equ 6 set race=Silent
if %racechoice% equ silent set race=Silent
if %racechoice% equ Silent set race=Silent
if %racechoice% equ 7 set race=Pixie
if %racechoice% equ Pixie set race=Pixie
if %racechoice% equ Pixie set race=Pixie
if %racechoice% equ 8 set race=Demon
if %racechoice% equ demon set race=Demon
if %racechoice% equ Demon set race=Demon

if race equ Orc (
set race_plural=Orcs
set str_r=2
set con_r=1
goto racefinal )

if race equ Elf (
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
if race equ Elf (
echo You have chosen to be an elf. Is this what you want [Y/N]?
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
goto racefinal
 

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
set /a dex%=dex%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:as_gen
set error=Animal Skills
set /a %as%=%as%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:percption_gen
set error=Perception
set /a %perception%=%perception%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:stealth_gen
set error=Stealth
set /a %stealth%=%stealth%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:survival_gen
set error=Survival
set /a %survival%=%survival%+1
set /a skillpts=%skillpts%-1
goto pointcheck )

:pointcheck
if %skillpts% leq 0 goto skills_final
goto skillgen

:skills_final
cls
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
if '%yn%' equ 'y' goto saveskills
if '%yn%' equ 'Y' goto saveskills
if '%yn%' equ 'n' goto resetskills
if '%yn%' equ 'N' goto resetskills
goto main

:resetskills
cls
color 0c
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
goto resetskills