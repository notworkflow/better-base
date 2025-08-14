#!/usr/bin/env bash

set -eoux pipefail

IMAGE_INFO="/usr/share/ublue-os/image-info.json"
IMAGE_REF="ostree-image-signed:docker://ghcr.io/$IMAGE_VENDOR/$IMAGE_NAME"

# image-info File
sed -i 's/"image-name": [^,]*/"image-name": "'"$IMAGE_NAME"'"/' $IMAGE_INFO
sed -i 's/"image-vendor": [^,]*/"image-vendor": "'"$IMAGE_VENDOR"'"/' $IMAGE_INFO
sed -i 's|"image-ref": [^,]*|"image-ref": "'"$IMAGE_REF"'"|' $IMAGE_INFO

# OS Release File
sed -i "s/^VARIANT_ID=.*/VARIANT_ID=$IMAGE_NAME/" /usr/lib/os-release
sed -i "s/^NAME=.*/NAME="'"Fp OS"'"/" /usr/lib/os-release
sed -i "s/^PRETTY_NAME=.*/PRETTY_NAME="'"Fp OS (From Bazzite)"'"/" /usr/lib/os-release
sed -i "s/^DEFAULT_HOSTNAME=.*/DEFAULT_HOSTNAME="'"fp-pc"'"/" /usr/lib/os-release
sed -i "s/^HOME_URL=.*/HOME_URL="'"https://os.fpt.icu"'"/" /usr/lib/os-release
