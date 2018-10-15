#! /bin/bash
set -ex

cd ${0%/*}/../  # cd to the topdir.
yamllint --strict $(git ls-files '*.yaml' '*.yml')
which ansible-lint 2>/dev/null && ansible-lint -vvv tests/test.yml || ansible-lint-3 -vvv tests/test.yml
ansible-playbook -vvv tests/test.yml -i tests/inventory --syntax-check

