# Backup and Recovery Strategy

**Status:** Approved; implementation starts in Phase 11.

Configuration and persistent data will be backed up daily. Initial retention is seven daily, four weekly, and three monthly restore points. AWS copies use encrypted versioned object storage and lifecycle rules.

Initial objectives are a 24-hour RPO for configuration and mail data and a four-hour RTO for core services. They remain objectives until timed restoration proves them.

A backup is valid only after checksum, archive, and sampled restoration checks.
