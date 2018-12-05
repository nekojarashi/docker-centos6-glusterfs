#!/bin/bash

service glusterd start

exec "$@"