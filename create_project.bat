
@echo off
:: doesn't show the executed commands in the cmd
:: to execute this script from anywhere with 'create_project' in the cmd, this file path must be saved as env variable


::create new folder based on input name
echo "What do you want the folder to be called?"
set /P folderName=
md "%CD%\%folderName%"


:: get iniside the created directory and create scripts folder
cd "%CD%\%folderName%"
md "scripts"


:: copy paste the readme file into the project file
xcopy "C:\Users\alexa\Desktop\Studies\Perso\Project_automation\README.md" "%CD%\"


:: copy paste the license file into the project file with a condition
echo "Do you want to add MIT License ? [Y/N]"
set /P userChoice=
if /I "%UserChoice%" == "Y" (xcopy "C:\Users\alexa\Desktop\Studies\Perso\Project_automation\LICENSE" "%CD%\")

echo "Project path is %CD%"
:: open python script for git initialization
echo "Do you want to initialize a git repository for this project ? [Y/N]"
set /P userChoiceGit=
if /I "%userChoiceGit%" == "Y" (python C:\Users\alexa\Desktop\Studies\Perso\Project_automation\project_auto.py)


echo "Everything is set up !"
