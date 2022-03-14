#!/bin/bash

echo "VERCEL_ENV: $VERCEL_ENV"
echo "BRANCH_NAME$(git branch --show-current)"

if [[ "$VERCEL_ENV" == "production" ]]  
then
  if [[ $(git branch --show-current) == 'mazdak']] 
  then
    echo "master must be build not other branc"
    exit 0;
  else 
    echo "✅ - Build can proceed"
    echo " I am HERE "
  fi
else
  # Don't build
  echo "🛑 - Build cancelled"
  exit 0;
fi
