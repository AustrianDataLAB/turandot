#!/bin/bash

set -e

psql -U "$POSTGRES_USER" << EOF
CREATE USER $POSTGRES_KEYCLOAK_USER WITH PASSWORD '$POSTGRES_KEYCLOAK_PASSWORD';
CREATE DATABASE $POSTGRES_KEYCLOAK_DB WITH OWNER $POSTGRES_KEYCLOAK_USER;
EOF