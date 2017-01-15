# Ansible role: Homebrew Cask app

[![Build Status](https://travis-ci.org/danbohea/ansible-role-cask-app.svg?branch=master)](https://travis-ci.org/danbohea/ansible-role-cask-app)

A re-usable Ansible role for installing macOS apps via Homebrew Cask providing an easy way to associate Ansible tags with app installations (see example playbook below). The role can be used as a dependency any number of times within a playbook.


## Requirements

- macOS 10.10, 10.11 or 10.12


## Role Variables

All role default variables are listed below along with their respective default values.

```
cask_app_name: "caffeine"
```

The name of the app you wish to install as it would be specified for Homebrew Cask. The default value here is for demonstration purposes only and is entirely intended to be overridden.

## Dependencies

- [danbohea.homebrew](https://galaxy.ansible.com/danbohea/homebrew)


## Example Playbook

```
- hosts: macbook
  connection: local

  roles:
    # Basic example
    - { cask_app_name: "alfred", role: cask_app }
    # Example with added tags
    - { cask_app_name: "alfred", tags: ["alfred","another_tag"], role: cask_app }
```


## License

MIT


## Author Information

This role was created by [Dan Bohea](http://bohea.co.uk) primarily for use with [Macsible](https://github.com/macsible/macsible).
