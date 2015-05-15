#!/usr/bin/env bash
CMD=$(which devpi-server)
ARGS=$@

if [ ${#@} -eq 0 ]; then
	ARGS="--port ${DEVPI_SERVERPORT} --serverdir ${DEVPI_SERVERDIR}"
fi
exec ${CMD} ${ARGS}
