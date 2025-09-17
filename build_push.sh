#!/bin/bash

AWS_ACCOUNT_ID=391757441861
AWS_REGION=us-east-1
REPO="${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com"

services=("svc1" "svc2" "svc3" "svc4" "svc5")

for svc in "${services[@]}"; do
  (
    echo "🚀 Building $svc..."
    docker build -t $svc:latest ./services/$svc

    echo "🏷️  Tagging $svc..."
    docker tag $svc:latest $REPO/$svc:latest

    echo "📤 Pushing $svc..."
    docker push $REPO/$svc:latest

    echo "✅ Done with $svc"
  ) &
done

wait
echo "🎉 All services built and pushed!"
