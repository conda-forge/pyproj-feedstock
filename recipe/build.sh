export PROJ_VERSION=$(conda list -p $PREFIX proj | grep -v '^#' | tr -s ' ' | cut -f 2 -d ' ')
echo "PROJ_VERSION detected as ${PROJ_VERSION}"

${PYTHON} -m pip install --no-deps --no-build-isolation -vv .
