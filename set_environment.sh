#!/bin/bash

if [ -z "$ENV_FILE" ]; then
    echo "No environment file specified, using default."
    exit 0
fi

if [ $ENV_FILE == "production" ]; then
    cp -f environments/environment.prod.ts environments/environment.ts
    echo "Using environment.prod.ts"
elif [ $ENV_FILE == "test" ]; then
    cp -f environments/environment.test.ts environments/environment.ts
    echo "Using environment.test.ts"
else
    echo "Invalid environment file specified, using default."
    exit 0
fi