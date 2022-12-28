{{/*
Expand the name of the chart.
*/}}
{{- define "ci-manager.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "ci-manager.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "ci-manager.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "ci-manager.labels" -}}
helm.sh/chart: {{ include "ci-manager.chart" . }}
{{ include "ci-manager.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "ci-manager.selectorLabels" -}}
app.kubernetes.io/name: {{ include "ci-manager.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "ci-manager.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "ci-manager.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the name of the sentinet image to use
*/}}
{{- define "ci-manager.securityImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.securityImage.image "global" .Values.global) }}
{{- end }}

{{- define "ci-manager.pullSecrets" -}}
{{ include "common.images.pullSecrets" (dict "images" (list .Values.image .Values.waitForInitContainer.image .Values.securityImage.image .Values.ci_images.addon.image .Values.ci_images.lite_engine.image .Values.ci_images.git_clone.image .Values.ci_images.kaniko.image .Values.ci_images.kaniko_ecr.image .Values.ci_images.kaniko_gcr.image .Values.ci_images.gcs_upload.image .Values.ci_images.s3_upload.image .Values.ci_images.artifactory_upload.image .Values.ci_images.gcs_cache.image .Values.ci_images.s3_cache.image) "global" .Values.global ) }}
{{- end -}}