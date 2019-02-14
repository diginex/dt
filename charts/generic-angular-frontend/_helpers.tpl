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

{{ define "ingress-tls" -}}
      enabled: true
      annotations:
        kubernetes.io/ingress.class: nginx
        certmanager.k8s.io/cluster-issuer: "letsencrypt-prod"
      tls:
      - secretName: {{ . | strings.Slug | printf "%s-tls" }}
        hosts: [{{ . | quote }}]
{{- end -}}

{{ define "tls-ingress" -}}
  ingress:
    default:
      {{ template "ingress-tls" . }}
      hosts:
        {{ . | quote }}: /
{{- end -}}

{{ define "migration-job" -}}
  job:
    migration:
      enabled: true
      annotations:
        "helm.sh/hook": post-upgrade
        "helm.sh/hook-delete-policy": before-hook-creation
      pod:
        args: {{ . | squote }}
{{- end -}}
