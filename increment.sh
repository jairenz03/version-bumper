#!/usr/bin/env bash
OLDVERSION=$1
IFS='-' read -a RMAPPEND <<< "$OLDVERSION"
VERSIONNUMBER=${RMAPPEND[0]}

#SEPERATE SEMANTIC VERSIONING
IFS='.' read -a SMVERSION <<< "$VERSIONNUMBER"
MAJOR=${SMVERSION[0]}
MINOR=${SMVERSION[1]}
PATCH=${SMVERSION[2]}

case "$2" in
    patch|Patch)
    shift
        PATCH=$(( PATCH + 1 ))
    shift
    ;;
    minor|Minor)
    shift
        MINOR=$(( MINOR + 1 ))
        PATCH="0"
    shift
    ;;
    major|Major)
    shift
        MAJOR=$(( MAJOR + 1 ))
        MINOR="0"
        PATCH="0"
    shift
    ;;
    current|Current)
    shift

    shift
    ;;
    *)
    ;;
esac

if [[ $1 == "-t" ]] &&  [[ $PATCH == "0" ]]; then
        BUMPEDVERSION=$MAJOR.$MINOR
else
    BUMPEDVERSION=$MAJOR.$MINOR.$PATCH
fi
echo $BUMPEDVERSION
