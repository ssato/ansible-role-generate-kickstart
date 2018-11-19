import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


# .. seealso:: https://testinfra.readthedocs.io/en/latest/modules.html#package
def test_openssl_package_is_installed(host):
    assert host.package('openssl').is_installed
