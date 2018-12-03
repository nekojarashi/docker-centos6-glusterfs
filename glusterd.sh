#!/bin/bash

service glusterd start

trap 'service glusterd stop; exit 0' TERM

exec /bin/bash
