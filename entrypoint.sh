#!/bin/sh

rpcbind

mkdir -p "${MOUNTPOINT}"

mount -t "${FSTYPE}" -o "${MOUNTOPTIONS}" "${SERVER}:${SHARE}" "${MOUNTPOINT}"

exec "${@}"
