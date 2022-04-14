# gofr-valueset-script
# Script to update  Gofr Valuesets

## Requirements
1. install the jq library

     sudo apt install -y jq
     
## Steps
1. Update the [CodeSystem Resource](./resources/openelis-code-system.json) and add more facility types as concepts
2. Update the  [ValueSet](./resources/gofr-location-type-valueset.json) version ie to 1.0.1 ,every time a new change is made to the CodeSystem Resource above in order for the new Concepts added to reflect in the Valuset
3. Edit the [run.sh](run.sh) file and put the right server Host , user name and password for the [GOFR](https://www.intrahealth.org/projects/global-open-facility-registry-gofr-core) instance
4. In the project root directory run the command below to update the GOFR instance with the new valuesets added 

       ./run.sh 
