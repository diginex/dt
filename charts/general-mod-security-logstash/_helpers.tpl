{{ define "image" -}}
image:
  repository: {{ .repository }}
  tag: {{ .tag }}
{{- end -}}