# Ansible role: Homebrew Cask app

[![Build Status](https://travis-ci.org/danbohea/ansible-role-cask-app.svg?branch=master)](https://travis-ci.org/danbohea/ansible-role-cask-app)

An Ansible role for installing Homebrew Cask apps on macOS.

- Run the role any number of times in your playbook, passing in different data each time.
- Install one cask app per Ansible task.
- Associate Ansible tags with each cask app installation task.

## Requirements

- Ansible >= 2.2.
- macOS:
  - 10.13
  - 10.12
  - 10.11

_* Requires more up to date python than is shipped with macOS._ 

## Role Variables

```yaml
# The name of the app you wish to install as it would be specified for Homebrew Cask.
cask_app_name: ""

# Any installation options that need to be passed to Homebrew Cask.
cask_app_install_options: ""
```

## Dependencies

- [danbohea.homebrew](https://galaxy.ansible.com/danbohea/homebrew)

## Example Playbook

```yaml
- hosts: all

  roles:
    # Minimal example.
    - {
      cask_app_name: firefox,
      role: ansible-role-cask-app
      }
    # Example using tags.
    - {
      cask_app_name: firefox,
      tags: ["firefox", "another_tag"],
      role: ansible-role-cask-app
      }
    # Example using cask_app_install_options.
    - { 
      cask_app_name: firefox,
      cask_app_install_options: force,
      role: ansible-role-cask-app
      }
```

## License

MIT

## Author Information

This role was created by [Dan Bohea](http://bohea.co.uk) primarily for use with [Macsible](https://github.com/macsible/macsible).
