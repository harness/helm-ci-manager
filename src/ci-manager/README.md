# ci-manager

![Version: 0.2.16](https://img.shields.io/badge/Version-0.2.16-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://harness.github.io/helm-common | harness-common | 1.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| appLogLevel | string | `"INFO"` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| ci_images.addon.digest | string | `""` |  |
| ci_images.addon.registry | string | `"docker.io"` |  |
| ci_images.addon.repository | string | `"harness/ci-addon"` |  |
| ci_images.addon.tag | string | `"1.14.7"` |  |
| ci_images.artifactory_upload.digest | string | `""` |  |
| ci_images.artifactory_upload.registry | string | `"docker.io"` |  |
| ci_images.artifactory_upload.repository | string | `"plugins/artifactory"` |  |
| ci_images.artifactory_upload.tag | string | `"1.1.0"` |  |
| ci_images.gcs_cache.digest | string | `""` |  |
| ci_images.gcs_cache.registry | string | `"docker.io"` |  |
| ci_images.gcs_cache.repository | string | `"plugins/cache"` |  |
| ci_images.gcs_cache.tag | string | `"1.4.0"` |  |
| ci_images.gcs_upload.digest | string | `""` |  |
| ci_images.gcs_upload.registry | string | `"docker.io"` |  |
| ci_images.gcs_upload.repository | string | `"plugins/gcs"` |  |
| ci_images.gcs_upload.tag | string | `"1.3.0"` |  |
| ci_images.git_clone.digest | string | `""` |  |
| ci_images.git_clone.registry | string | `"docker.io"` |  |
| ci_images.git_clone.repository | string | `"harness/drone-git"` |  |
| ci_images.git_clone.tag | string | `"1.2.0-rootless"` |  |
| ci_images.kaniko.digest | string | `""` |  |
| ci_images.kaniko.registry | string | `"docker.io"` |  |
| ci_images.kaniko.repository | string | `"plugins/kaniko"` |  |
| ci_images.kaniko.tag | string | `"1.6.0"` |  |
| ci_images.kaniko_ecr.digest | string | `""` |  |
| ci_images.kaniko_ecr.registry | string | `"docker.io"` |  |
| ci_images.kaniko_ecr.repository | string | `"plugins/kaniko-ecr"` |  |
| ci_images.kaniko_ecr.tag | string | `"1.6.0"` |  |
| ci_images.kaniko_gcr.digest | string | `""` |  |
| ci_images.kaniko_gcr.registry | string | `"docker.io"` |  |
| ci_images.kaniko_gcr.repository | string | `"plugins/kaniko-gcr"` |  |
| ci_images.kaniko_gcr.tag | string | `"1.6.0"` |  |
| ci_images.lite_engine.digest | string | `""` |  |
| ci_images.lite_engine.registry | string | `"docker.io"` |  |
| ci_images.lite_engine.repository | string | `"harness/ci-lite-engine"` |  |
| ci_images.lite_engine.tag | string | `"1.14.7"` |  |
| ci_images.s3_cache.digest | string | `""` |  |
| ci_images.s3_cache.registry | string | `"docker.io"` |  |
| ci_images.s3_cache.repository | string | `"plugins/cache"` |  |
| ci_images.s3_cache.tag | string | `"1.4.0"` |  |
| ci_images.s3_upload.digest | string | `""` |  |
| ci_images.s3_upload.registry | string | `"docker.io"` |  |
| ci_images.s3_upload.repository | string | `"plugins/s3"` |  |
| ci_images.s3_upload.tag | string | `"1.1.0"` |  |
| fullnameOverride | string | `""` |  |
| global.airgap | bool | `false` |  |
| global.ingress.useSelfSignedCert | bool | `false` |  |
| global.loadbalancerURL | string | `""` |  |
| image.digest | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"harness/ci-manager-signed"` |  |
| image.tag | string | `"76019"` |  |
| java.memory | int | `4096` |  |
| maxSurge | int | `1` |  |
| maxUnavailable | int | `0` |  |
| mongoSecrets.password.key | string | `"mongodb-root-password"` |  |
| mongoSecrets.password.name | string | `"mongodb-replicaset-chart"` |  |
| mongoSecrets.userName.key | string | `"mongodbUsername"` |  |
| mongoSecrets.userName.name | string | `"harness-secrets"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | int | `1` |  |
| resources.limits.memory | string | `"8192Mi"` |  |
| resources.requests.cpu | int | `1` |  |
| resources.requests.memory | string | `"1400Mi"` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `65534` |  |
| securityImage.image.digest | string | `""` |  |
| securityImage.image.registry | string | `"docker.io"` |  |
| securityImage.image.repository | string | `"harness/sto-plugin"` |  |
| securityImage.image.tag | string | `"latest"` |  |
| service.grpcport | int | `9979` |  |
| service.port | int | `7090` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `"harness-default"` |  |
| stoServiceGlobalToken.key | string | `"stoAppHarnessToken"` |  |
| stoServiceGlobalToken.name | string | `"harness-secrets"` |  |
| timescaleSecret.password.key | string | `"timescaledbPostgresPassword"` |  |
| timescaleSecret.password.name | string | `"harness-secrets"` |  |
| tolerations | list | `[]` |  |
| waitForInitContainer.image.digest | string | `""` |  |
| waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| waitForInitContainer.image.registry | string | `"docker.io"` |  |
| waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| waitForInitContainer.image.tag | string | `"latest"` |  |

