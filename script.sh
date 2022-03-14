#!/bin/bash

echo "VERCEL_ENV: $VERCEL_ENV"
echo "BRANCH_NAME$(git branch --show-current)"

if [[ "$VERCEL_ENV" == "production" ]] ; then
  # Proceed with the build
  if [[ $(git branch --show-current) == 'mazdak']] ; then
    echo "master must be build not other branc"
  else 
    echo "✅ - Build can proceed"
    exit 1;
else
  # Don't build
  echo "🛑 - Build cancelled"
  exit 0;
fi
