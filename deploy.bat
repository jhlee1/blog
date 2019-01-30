echo -e "Deploying updates to GitHub..."
@echo off
REM Build the project.
REM if using a theme, replace by `hugo -t <yourtheme>`
@echo on
hugo -t 'jeffprod'
cd public
git add -A
if %1.==. (
  for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
  set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
  set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
  set "fullstamp=%YYYY%-%MM%-%DD%-%HH%-%Min%-%Sec%"
  set msg="rebuilding site "+"%fullstamp%"
) else (
  set msg=%1
)
git commit -m %msg%
git push origin master
cd ..
