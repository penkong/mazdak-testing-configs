#!/bin/bash

echo "VERCEL_ENV: $VERCEL_ENV"
echo "BRANCH_NAME: $(git branch --show-current)"

if [[ $(git branch --show-current) == 'mazdak' ]] ; then
  # Proceed with the build
  echo "🛑  branch is mazdak"
  exit 1;

else
  # Don't build
  echo "HOW ARE YOU!!!!!!"
fi

if [[ "$VERCEL_ENV" == "production" ]] ; then
  # Proceed with the build
  echo "✅ - Build can proceed"
  exit 1;

else
  # Don't build
  echo "🛑 - Build cancelled"
  exit 0;
fi