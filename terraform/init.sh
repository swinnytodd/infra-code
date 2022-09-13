#!/bin/bash
#
# General script to `terraform init` same way for any folder

ROOT=$(git rev-parse --show-toplevel)
PWD=$(pwd)

if ! [[ -L "${BASH_SOURCE[0]}" ]]; then
    echo "You must not execute this script directly!"
    echo "Instead of this:"
    echo "  1. Go to the working directory of a module."
    echo "  2. Create a symbolic link to 'init.sh' from there."
    echo "  3. Execute the link."
    exit 1
fi

for TOOL in jq git terraform; do
    if ! which $TOOL 1>/dev/null; then
        echo "Tool ${TOOL} was not found."
        exit 1
    fi
done

CONFIGPATH="${ROOT}/terraform/config-state.tf.json"

S3BUCKET_NAME=$(jq -r '.variable.bucket_name.default' "$CONFIGPATH")
S3BUCKET_REGION=$(jq -r '.variable.bucket_region.default' "$CONFIGPATH")
S3BUCKET_KEY="${PWD#"$ROOT"/terraform/}/terraform.tfstate"
DYNAMODB_TABLE_NAME=$(jq -r '.variable.locks.default' "$CONFIGPATH")

echo "Registering bucket for terraform state with the following parameters:
  bucket = ${S3BUCKET_NAME}
  region = ${S3BUCKET_REGION}
  key    = ${S3BUCKET_KEY}"

terraform init \
    -backend-config="bucket=${S3BUCKET_NAME}" \
    -backend-config="region=${S3BUCKET_REGION}" \
    -backend-config="key=${S3BUCKET_KEY}" \
    -backend-config="dynamodb_table=${DYNAMODB_TABLE_NAME}" \
    -get=true \
    -force-copy
