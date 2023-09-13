{
<<<<<<< HEAD
    "policy": "\npath \"{{ vault.secret_path | default('secretsv2') }}/data/{{ item.name | lower }}/*\" {
=======
    "policy": "path \"{{ vault.secret_path | default('secretsv2') }}/data/{{ org.name | lower }}/*\"{ 
>>>>>>> 97c6f266f29fd8bc605bb4efcf31ea8fa2b76d8b
        capabilities = [\"read\", \"list\", \"create\", \"update\"]
    }"
}
