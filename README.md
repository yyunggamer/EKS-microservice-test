# eks-microservices-test

Public test repo to provision a tiny AWS EKS cluster, create ECR repos for up to 5 services,
build/push test images and deploy via GitHub Actions.

**Important:** Do NOT commit secrets. Use GitHub Secrets for AWS credentials and cluster name.
