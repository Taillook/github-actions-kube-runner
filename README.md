# GitHub Actions Kube Runner

GitHub Actions Kube Runner is Helm Chart of GitHub Actions Self hosted runner for on Kubernetes.

## Prerequisites

- Kubernetes1.6
- Helm v3

## Installing the Chart

`make helm-install`

## Configration

### Dockerdile

Dependencies package write on between `Install Dependent packages`.

example:
```
RUN apt-get install anything
```

### secret.sample.yaaml

Need setting s secret resource, GH_PA_TOKEN and GH_USER_NAME.

### values.sample.yaml

Need setting each  parameters.  
About "projects" is need minimum 1 item.