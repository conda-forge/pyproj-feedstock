# based on https://github.com/conda-forge/singlejar-feedstock/blob/e76b380372282bc9df5c27faec8ca9149e0fdcc4/recipe/build.sh#L9
export PROJ_VERSION=$(conda list -p $PREFIX proj | grep -v '^#' | tr -s ' ' | cut -f 2 -d ' ')
echo "PROJ_VERSION detected as ${PROJ_VERSION}"

${PYTHON} -m pip install --no-deps --no-build-isolation -vv .
