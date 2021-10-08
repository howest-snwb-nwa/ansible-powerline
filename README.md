# Very Basic Powerline playbook

Install Powerline, "My first playbook" style.

On Ubuntu, check your *~/.bashrc* file. It should contain a section like this:

```bash
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

On Fedora, a similar section in *~/.bashrc* exists.

```bash
# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
        for rc in ~/.bashrc.d/*; do
                if [ -f "$rc" ]; then
                        . "$rc"
                fi
        done
fi

unset rc
```

If you have a section like these in your *~/.bashrc* the shell will either source *~/.bash_aliases* or any file in *~/.bashrc.d/*.
This playbook assumes you have such an 'include' and copies the Powerline configuration as a separate file to the home directory of the account running ansible (the ansible_user).

**warning**: If you already have a *~/.bash_aliases* file, this playbook will overwrite that file.