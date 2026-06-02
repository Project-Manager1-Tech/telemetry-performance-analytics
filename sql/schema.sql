CREATE TABLE telemetry (
    timestamp TIMESTAMP,
    device_id VARCHAR(20),
    cpu_usage DOUBLE PRECISION,
    memory_usage DOUBLE PRECISION,
    temperature_c DOUBLE PRECISION,
    network_latency_ms DOUBLE PRECISION,
    throughput_mbps DOUBLE PRECISION,
    error_count INTEGER,
    uptime_pct DOUBLE PRECISION,
    location VARCHAR(50),

    date DATE,
    hour INTEGER,
    month INTEGER,

    risk_flag BOOLEAN,

    error_severity VARCHAR(20),
    cpu_category VARCHAR(20),
    latency_category VARCHAR(20),

    latency_score DOUBLE PRECISION,
    device_health_score DOUBLE PRECISION
);