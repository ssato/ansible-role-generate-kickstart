# ssato.openssl-cert

A ansible role to generate kickstart installation files.

[![Build Status](https://img.shields.io/travis/ssato/ansible-role-generate-kickstart.png)](https://travis-ci.org/ssato/ansible-role-generate-kickstart)

## Requirements

- pykickstart (pykickstart)
- mkisofs (genisoimage)

## Role Variables

Variables should be customized for your use cases.

- openssl_cert_workdir: Working dir to generate cert files
- openssl_cert_common_name: Common name
- openssl_cert_country: Country
- openssl_cert_state: State
- openssl_cert_organization: Organization
- openssl_cert_unit: Organization Unit
- openssl_cert_days: How many days it will be valid for
- openssl_cert_key_bits: The size of the private key

Variables may be customized as needed.

- openssl_cert_debug: Debug flag
- openssl_cert_generate_self_signed_cert: flag to generate CA cert and self-signed server cert

Variables do not need to be customized for most cases.

- openssl_cert_packages: Packages required to install

see defaults/main.yml for default definitions of each variables.

## Example Playbook

see tests/test.yml

## License

MIT

## Author

Satoru SATOH `ssato@Github <https://github.com/ssato>`_

<!-- vim:sw=2:ts=2:et:
-->
