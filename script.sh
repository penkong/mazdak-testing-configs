#!/bin/bash

echo "VERCEL_ENV: $VERCEL_ENV"
echo "BRANCH_NAME$(git branch --show-current)"

if [[ $(git branch --show-current) == 'mazdak']] 
then
  echo "master must be build not other branc"
  exit 0;
fi

if [[ "$VERCEL_ENV" == "production" ]]  
then
  echo "✅ - Build can proceed"
  echo " I am HERE "
else
  # Don't build
  echo "🛑 - Build cancelled"
  exit 0;
fi
