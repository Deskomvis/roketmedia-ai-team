#!/usr/bin/env bash
set -euo pipefail
# Run after installing Hermes CLI. Profiles are not automatically linked to CEO.
hermes profile create product-hunter
hermes profile create product-validator
hermes profile create offer-strategist
hermes profile create creative-director
hermes profile create creative-producer
hermes profile create landing-page-builder
hermes profile create media-buyer
hermes profile create ads-optimizer
hermes profile create sales-closer
hermes profile create finance-controller
hermes profile create data-qa-analyst
echo "Created 11 specialist profiles; MAIN Hermes profile is already CEO. Configure skills, credentials and delegation routes manually."
