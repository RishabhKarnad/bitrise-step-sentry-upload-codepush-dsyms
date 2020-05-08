#!/usr/bin/env bash
# fail if any commands fails
set -e
# debug log
set -x

# upload iOS source maps to Sentry
export SENTRY_PROPERTIES=$SENTRY_PROPERTIES_PATH
export APPCENTER_ACCESS_TOKEN=$APPCENTER_API_TOKEN
./node_modules/@sentry/cli/bin/sentry-cli react-native appcenter $OPTIONS $APPCENTER_APP_ID $REACT_NATIVE_PLATFORM $REACT_NATIVE_BUILD_DIR/CodePush
