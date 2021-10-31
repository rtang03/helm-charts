{{/*
Expand the name of the chart.
*/}}
{{- define "hlf-explorer-db.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "hlf-explorer-db.fullname" -}}
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
{{- define "hlf-explorer-db.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "hlf-explorer-db.labels" -}}
helm.sh/chart: {{ include "hlf-explorer-db.chart" . }}
{{ include "hlf-explorer-db.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "hlf-explorer-db.selectorLabels" -}}
app.kubernetes.io/name: {{ include "hlf-explorer-db.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "hlf-explorer-db.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "hlf-explorer-db.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
App Name
*/}}
{{- define "hkicl.appname" -}}
{{- default (include "hlf-explorer-db.fullname" .) .Values.appname }}
{{- end }}

{{/*
Org Name
*/}}
{{- define "hkicl.orgname" -}}
{{- default "default-org" .Values.orgname }}
{{- end }}
