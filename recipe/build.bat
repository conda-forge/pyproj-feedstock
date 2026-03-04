:: based on https://github.com/conda-forge/python-feedstock/blob/3732e621ad28b925e402c3c1d8542bac029920ad/recipe/build_base.bat#L28-L30
for /f "usebackq delims=" %%i in (`conda list -p %PREFIX% proj --no-show-channel-urls --json ^| findstr "version"`) do set PROJ_VERSION_LINE=%%i
for /f "tokens=2 delims==/ " %%i IN ('echo %PROJ_VERSION_LINE%') do (set PROJ_VERSION=%%~i)
echo PROJ_VERSION detected as %PROJ_VERSION%

%PYTHON% -m pip install --no-deps --no-build-isolation -vv .
