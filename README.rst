=====================
ssato.openssl-cert
=====================

ssato.openssl-cert is an ansible role to generate TLS cert files.

.. image:: https://img.shields.io/travis/ssato/ansible-role-openssl-cert.png
   :target: https://travis-ci.org/ssato/ansible-role-openssl-cert
   :alt: [Test status]

Requirements
==============

- openssl

Role Variables
================

see defaults/main.yml for each variable definitions.

- If you want to override all default variables, you may copy defaults/main.yml and customize it.
- If you want to override default variables partially, you may arrange ansible.cfg to override the default hash merging behavior like this.

  ::

    # ansible.cfg
    [defaults]
    hash_behaviour=merge

Example Playbook
====================

see tests/test.yml

License
===========

MIT

Author
==========

Satoru SATOH `ssato@Github <https://github.com/ssato>`_

.. vim:sw=2:ts=2:et:
