# self-config

## How to build and run ?

1. Install the dependencies 
   - ansible

2. Run the playbook
3. Install the tmux plugins with **`Shortcut + I`**

## Roles

- **`base`**: Install basics needed packages for the other roles
- **`minimal`**: Setup a minimal environment (shell and others tools) + configure it
   - **vars**:
     - **`xz`**: The package name that install the `xz` binary

## Usage example

You can check `example/`

#### With vault
```bash
ansible-playbook \
   -i inventory playbook.yml \
   --vault-pass-file .vault_pass
```

#### Without vault
```bash
ansible-playbook \
   -i inventory playbook.yml 
```
