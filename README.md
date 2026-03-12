## @gratheon/postgres

A simple PostgreSQL container config for local development.
Aims at the latest major PostgreSQL line (`postgres:18`).

Run with [just](https://github.com/casey/just):

```bash
just start
```

## Connecting

- Service hostname (Docker network): `postgres:5432`
- Local host access: `postgresql://test:test@0.0.0.0:5300/postgres`
- Initialized databases: `user-cycle`, `swarm-api`, `image-splitter`, `alerts`, `logs`, `telemetry-api`, `grafana`

## Troubleshooting

`init-databases.sql` is executed only when the PostgreSQL data volume is created for the first time.
If the container was already initialized before a DB was added to that script, the new DB will not appear automatically.

To create the missing alerts DB in an existing running container:

```bash
docker exec -it gratheon-postgres-1 psql -U test -d postgres -c 'CREATE DATABASE "alerts";'
docker exec -it gratheon-postgres-1 psql -U test -d postgres -c 'GRANT ALL PRIVILEGES ON DATABASE "alerts" TO test;'
```
