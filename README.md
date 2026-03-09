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
