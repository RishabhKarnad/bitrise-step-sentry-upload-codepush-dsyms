#!/usr/bin/env bash
# fail if any commands fails
set -e
# debug log
set -x

# upload iOS source maps to Sentry
export SENTRY_PROPERTIES=$sentry_properties_path
export APPCENTER_ACCESS_TOKEN=$api_token
./node_modules/@sentry/cli/bin/sentry-cli react-native appcenter $options $app_id $platform $build_dir/CodePush
