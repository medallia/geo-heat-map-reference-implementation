#!/usr/bin/env bash

set -e; # exit if any statement returns a non-true value
set -u; # ensure variables are set

MAPSHAPER="node_modules/.bin/mapshaper"

if [ ! -e "${MAPSHAPER}" ]
then
    >&2 echo "Cannot find mapshaper -- did you run 'npm install' first?"
    exit 1
fi

DATASET_NAME="ne_110m_admin_1_states_provinces_lakes"
SHAPEFILE="${DATASET_NAME}/${DATASET_NAME}.shp"

${MAPSHAPER} \
    -i "files=${SHAPEFILE}" \
    -filter-fields fields="iso_3166_2" \
    -each "id='state_' + this.properties.iso_3166_2" \
    -o - \
        format=topojson \
        prettify \
        id-field="id" \
    | jq . > data.json

echo "data.json TopoJSON file generated."
