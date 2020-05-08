#!/usr/bin/env bash
# fail if any commands fails
set -e
# debug log
set -x

# upload iOS source maps to Sentry
export SENTRY_PROPERTIES=$SENTRY_PROPERTIES_PATH
./node_modules/@sentry/cli/bin/sentry-cli react-native appcenter --token $APPCENTER_API_TOKEN $OPTIONS $APPCENTER_APP_ID $REACT_NATIVE_PLATFORM $REACT_NATIVE_BUILD_DIR/CodePush
