-- KPI 1: Fleet Health (How healthy is our overall device fleet?)
SELECT
ROUND(AVG(device_health_score)::numeric,2) AS fleet_health_score
FROM telemetry;

-- KPI 2: Risk Event (What percentage of all recorded telemetry events are classified as a high risk?)
SELECT
ROUND(
100.0 *
SUM(CASE WHEN risk_flag = TRUE THEN 1 ELSE 0 END)
/
COUNT(*),
2
) AS risk_event_percentage
FROM telemetry;


-- KPI 3: Average CPU Utilization (Are devices operating under acceptable load)
SELECT
ROUND(AVG(cpu_usage)::numeric,2) AS avg_cpu_usage
FROM telemetry;

-- KPI 4: Average Network Latency
SELECT
ROUND(AVG(network_latency_ms)::numeric,2) AS avg_latency_ms
FROM telemetry;

-- KPI 5: Average Throughput
SELECT
ROUND(AVG(throughput_mbps)::numeric,2) AS avg_throughput_mbps
FROM telemetry;

-- KPI 6: Average Uptime
SELECT
ROUND(AVG(uptime_pct)::numeric,2) AS avg_uptime_pct
FROM telemetry;