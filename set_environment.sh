#!/bin/bash

if [ -z "$ENV_FILE" ]; then
    echo "No environment file specified, using default."
    cp -f src/environments/environment.default.ts src/environments/environment.ts
    exit 0
fi

if [ $ENV_FILE == "production" ]; then
    echo "Using environment.prod.ts"
    cp -f src/environments/environment.prod.ts src/environments/environment.ts
elif [ $ENV_FILE == "test" ]; then
    echo "Using environment.test.ts"
    cp -f src/environments/environment.test.ts src/environments/environment.ts
else
    echo "Invalid environment file specified, using default."
    cp -f src/environments/environment.default.ts src/environments/environment.ts
fi