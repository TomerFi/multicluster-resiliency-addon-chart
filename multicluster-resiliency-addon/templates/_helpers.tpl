{{/* Labels for use with the various resources */}}
{{- define "mcra.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
{{- end }}

{{/* Compose manager image */}}
{{- define "mcra.manager-image" -}}
{{- printf "%s/%s/%s:%s" .Values.manager.image.registry .Values.manager.image.owner .Values.manager.image.name .Values.manager.image.tag  -}}
{{- end -}}

{{/* Compose agent image */}}
{{- define "mcra.agent-image" -}}
{{- printf "%s/%s/%s:%s" .Values.agent.image.registry .Values.agent.image.owner .Chart.Name .Values.agent.image.tag  -}}
{{- end -}}

{{/* Compose metrics proxy image */}}
{{- define "mcra.metrics-proxy-image" -}}
{{- printf "%s/%s/%s:%s" .Values.manager.metrics.proxy.image.registry .Values.manager.metrics.proxy.image.owner .Values.manager.metrics.proxy.image.name .Values.manager.metrics.proxy.image.tag  -}}
{{- end -}}
