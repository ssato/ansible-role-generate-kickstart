#! /usr/bin/bats
#
# Requirements:
#   - bats: https://github.com/sstephenson/bats
#
function setup_workdir () {
    export TESTS_OUT_DIR=$(mktemp --directory)
    export INVENTORY=${INVENTORY:-hosts.yml}
}

function prune_workdir () {
    test -d ${TESTS_OUT_DIR:?} && [[ ${TESTS_OUT_DIR} != "/" ]] && rm -rf ${TESTS_OUT_DIR}
}

function setup () {
    setup_workdir
}

function teardown () {
    prune_workdir
}

@test "Lint all yaml files" {
    run yamllint roles/ .
    [[ ${status} -eq 0 ]]
}

@test "Check styles of all playbook files" {
    run ansible-lint *.yml
    [[ ${status} -eq 0 ]]
}

@test "Test if ansible-playbook --syntax-check passes" {
    run ansible-playbook -v -i $INVENTORY test.yml --syntax-check
    [[ ${status} -eq 0 ]]
}

@test "Test if the playbook run successfully" {
    run ansible-playbook -v -i $INVENTORY test.yml \
        -e gen_ks_outdir=${TESTS_OUT_DIR}
    [[ ${status} -eq 0 ]]
}

# vim:sw=4:ts=4:et:filetype=sh:
