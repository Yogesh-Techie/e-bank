{{/*
Return the name of the chart
*/}}
{{- define "ebank-backend.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{/*
Return the fully qualified app name
*/}}
{{- define "ebank-backend.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}
