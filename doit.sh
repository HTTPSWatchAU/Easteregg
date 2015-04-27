#!/bin/bash

### yes this is a nasty hack, but it will work for now.

set -e

cd "$(dirname $0)"

./runjobs.py $1
./generatesummary.py -t -r web/ssltest.xml > web/ssltest.json
