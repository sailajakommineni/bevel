{
    "policy": "\npath \"{{ vault.secret_path | default('secretsv2') }}/data/{{ item.name | lower }}/*\" {
        capabilities = [\"read\", \"list\", \"create\", \"update\"]
    }"
}
