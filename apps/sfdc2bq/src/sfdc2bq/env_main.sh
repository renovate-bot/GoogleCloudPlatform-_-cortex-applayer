#!/bin/bash
# Copyright 2024 Google LLC

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

echo "Executing SFDC2BQ"

python3 main.py \
    --project "${BQ_PROJECT}" \
    --dataset "${BQ_DATASET}" \
    --location "${BQ_LOCATION}" \
    --sfdc-connection-secret "${SFDC_AUTH_SECRET}" \
    --objects-to-replicate "${SFDC_OBJECTS}" \
    --store-sfdc-metadata "${STORE_SFDC_METADATA}" \
    --sfdc-csv-delimiter "${SFDC_EXPORT_CSV_DELIMETER}"

echo "✅"
