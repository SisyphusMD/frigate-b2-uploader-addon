#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: Frigate B2 Uploader
# Runs the Frigate B2 Uploader
# ==============================================================================

# Export configuration options as environment variables
export B2_ACCOUNT_ID=$(bashio::config 'B2_ACCOUNT_ID')
export B2_APPLICATION_KEY=$(bashio::config 'B2_APPLICATION_KEY')
export B2_BUCKET_NAME=$(bashio::config 'B2_BUCKET_NAME')
export FRIGATE_URL=$(bashio::config 'FRIGATE_URL')

# Run the Frigate B2 Uploader
exec /usr/bin/frigate-b2-uploader
