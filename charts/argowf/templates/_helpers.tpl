{{/*
Selector labels
*/}}
{{- define "argo-workflows.selectorLabels" -}}
app: {{ .Chart.Name }}
version: {{ .Chart.Version }}
{{- if .name -}}
app.kubernetes.io/name: {{ include "argo-workflows.name" .context }}-{{ .name }}
{{ end -}}
app.kubernetes.io/instance: {{ .context.Release.Name }}
{{- if .component }}
app.kubernetes.io/component: {{ .component }}
{{- end }}
{{- end }}
