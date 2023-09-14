metadata:
  name: "{{ sc_name }}"
cloud_provider: "{{ cloudProvider }}"
reclaimPolicy: Delete
volumeBindingMode: Immediate
{% if cloud_provider == "aws" %}
provisioner: kubernetes.io/aws-ebs
{% elif cloud_provider == "gcp" %}
provisioner: gce.csi.google.com
{% elif cloud_provider == "minikube" %}
provisioner: k8s.io/minikube-hostpath
{% endif %}

