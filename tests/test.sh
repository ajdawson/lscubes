#!/bin bash
#
# Test program for lscubes.
#

declare -a COMMANDS
COMMANDS=(
    "lscubes ctd.nc"
    "lscubes ctd.nc -s"
    "lscubes ctd.nc -n sea_water_temperature"
    "lscubes ctd.nc -s -n sea_water_temperature"
)

for CMD in "${COMMANDS[@]}"; do
    TMPFILE=`mktemp /tmp/lscubes.XXXXXXXXXX || exit 1`
    echo "testing: $CMD"
    echo "-----------------------------------------------------"
    eval $CMD > $TMPFILE
    if cmp --silent $TMPFILE expected/${CMD// /_}.txt; then
        echo "test passed"
    else
        echo "test failed"
    fi
    echo
    rm $TMPFILE
done

