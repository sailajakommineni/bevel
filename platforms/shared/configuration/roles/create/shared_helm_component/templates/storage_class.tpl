metadata:
  name: "{{ sc_name }}"
cloud_provider: "{{ cloudProvider }}"
reclaimPolicy: Delete
volumeBindingMode: Immediate
{% if cloud_provider == "aws" %}
provisioner: ebs.csi.aws.com
{% elif cloud_provider == "gcp" %}
provisioner: gce.csi.google.com
{% elif cloud_provider == "minikube" %}
provisioner: k8s.io/minikube-hostpath
{% endif %}
{% if cloud_provider == "aws" %}
allowedTopologies:
  - matchLabelExpressions:
      - key: topology.ebs.csi.aws.com/zone
        values:
          - "{{ region }}a"
{% endif %}
