#!/bin/bash
baseurl=$1;
username=$2;
password=$3;
token=`curl -XPOST -H 'Content-Type: application/json' -d '{"username": "'"$username"'", "password": "'"$password"'"}' ${baseurl}/auth/token | jq -r '.access_token'`

curl -i -H "Content-type: application/json" -H "Authorization: Bearer ${token}" -X PUT ${baseurl}/fhir/DEFAULT/ValueSet/gofr-location-type-valueset -d @./resources/gofr-location-type-valueset.json

curl -i -H "Content-type: application/json" -H "Authorization: Bearer ${token}" -X PUT ${baseurl}/fhir/DEFAULT/CodeSystem/openelis-code-system -d @./resources/openelis-code-system.json