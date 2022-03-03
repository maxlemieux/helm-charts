{{- /* Defines the container securityContext context */ -}}
{{- define "common.securityContext.container" -}}
    {{- if .Values.global.securityContext -}}
        {{- if .Values.securityContext -}}
            {{- toYaml (mustMergeOverwrite .Values.global.securityContext .Values.securityContext) -}}
        {{- else -}}
            {{- toYaml .Values.global.securityContext -}}
        {{- end -}}
    {{- else if .Values.securityContext -}}
        {{- toYaml .Values.securityContext -}}
    {{- end -}}
{{- end -}}

{{- /* Defines the pod securityContext context */ -}}
{{- define "common.securityContext.pod" -}}
    {{- if .Values.global.podSecurityContext -}}
        {{- if .Values.podSecurityContext -}}
            {{- toYaml (mustMergeOverwrite .Values.global.podSecurityContext .Values.podSecurityContext) -}}
        {{- else -}}
            {{- toYaml .Values.global.podSecurityContext -}}
        {{- end -}}
    {{- else if .Values.podSecurityContext -}}
        {{- toYaml .Values.podSecurityContext -}}
    {{- end -}}
{{- end -}}
