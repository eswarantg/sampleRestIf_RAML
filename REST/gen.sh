#!/bin/ksh -v
raml validate $1
SCHEMA_DIR="file:///Users/sadasie/git/sampleRestIf_RAML/schemas"
BASE_URL="http://vcs.cisco.com/"
ls $SCHEMA_DIR
ramlev $1 -f $BASE_URL -d "$SCHEMA_DIR"
#ramlev $1 
raml2html $1 > $1.html
