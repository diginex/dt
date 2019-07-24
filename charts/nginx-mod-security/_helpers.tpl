{{ define "image" -}}
  image:
    repository: {{ .repository }}
    tag: {{ .tag }}
{{- end -}}

{{ define "deployment" -}}
  deployment:
    enabled: true
    {{ if . -}}
    pod:
      command: {{ . | squote }}
    {{- end -}}
{{- end -}}

{{ define "service" -}}
  service:
    enabled: true
    ports:
      default:
        internal: {{ . }}
        external: {{ . }}
{{- end -}}