# 🔧 self-config

## 📖 How to build and run ?

1. Install the dependencies 
   - ansible
   - docker (for tests)

2. Run the playbook
3. Install the tmux plugins with **`Shortcut + I`**

## ℹ️ Roles

- **`base`**: Install basics needed packages for the other roles
- **`minimal`**: Setup a minimal environment (shell and others tools) + configure it
   - **vars**:
     - **`xz`**: The package name that install the `xz` binary
 - **`extra`**: Stuff considered as extra like terminal, de/wm, etc..
    - **vars**:
      - **`i3`**: The package name that install the `i3` binaries
      - **`libxrandr`**: The package name that install the library `Xrandr` headers (dev lib)

*👀* **`group_vars`**: Contains the vault credentials and a font name

## 🧪 Test

It will create a docker container and execute the playbook

```bash
cd tests && bash test.sh
```

## 📜 Usage example

You can check `example/`

#### 🔒 With vault
```bash
ansible-playbook \
   -i inventory playbook.yml \
   --vault-pass-file .vault_pass
```

#### 🔓 Without vault
```bash
ansible-playbook \
   -i inventory playbook.yml 
```
