#!/usr/bin/env bash
function prepare_venv() {
	virtualenv -p python3 venv && source venv/bin/activate && python3 `which pip3` install -r integration_tests/requirements.txt
}

[ "$NOVENV" == "1" ] || prepare_venv || exit 1

behave ./integration_tests