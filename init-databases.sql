-- Init script to create required databases for Gratheon services in PostgreSQL.
-- This runs once when the PostgreSQL container initializes a fresh data volume.

CREATE DATABASE "user-cycle";
CREATE DATABASE "swarm-api";
CREATE DATABASE "image-splitter";
CREATE DATABASE "logs";
CREATE DATABASE "telemetry-api";
CREATE DATABASE "grafana";

GRANT ALL PRIVILEGES ON DATABASE "user-cycle" TO test;
GRANT ALL PRIVILEGES ON DATABASE "swarm-api" TO test;
GRANT ALL PRIVILEGES ON DATABASE "image-splitter" TO test;
GRANT ALL PRIVILEGES ON DATABASE "logs" TO test;
GRANT ALL PRIVILEGES ON DATABASE "telemetry-api" TO test;
GRANT ALL PRIVILEGES ON DATABASE "grafana" TO test;
