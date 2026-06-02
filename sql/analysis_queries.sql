/*
Project: Telemetry Performance Analytics

Purpose:
Identify operational risks, performance bottlenecks,
device reliability issues, and infrastructure health trends
across an IoT device fleet.

Author: Sayan Saha
*/

-- Analysis 1: Top Error Devices
SELECT
device_id,
SUM(error_count) AS total_errors
FROM telemetry
GROUP BY device_id
ORDER BY total_errors DESC
LIMIT 10;

-- Analysis 2: Most Risky Devices
SELECT
device_id,
COUNT(*) AS risky_events
FROM telemetry
WHERE risk_flag = TRUE
GROUP BY device_id
ORDER BY risky_events DESC
LIMIT 10;

-- Analysis 3: Lowest Health Devices
SELECT
device_id,
ROUND(AVG(device_health_score)::numeric,2) AS avg_health
FROM telemetry
GROUP BY device_id
ORDER BY avg_health ASC
LIMIT 10;

-- Analysis 4: Location Reliability
SELECT
location,
SUM(error_count) AS total_errors
FROM telemetry
GROUP BY location
ORDER BY total_errors DESC;

-- Analysis 5: Location Health Comparison
SELECT
location,
ROUND(AVG(device_health_score)::numeric,2) AS avg_health
FROM telemetry
GROUP BY location
ORDER BY avg_health DESC;

-- Analysis 6: Peak Usage Hours
SELECT
hour,
ROUND(AVG(cpu_usage)::numeric,2) AS avg_cpu
FROM telemetry
GROUP BY hour
ORDER BY avg_cpu DESC;

-- Analysis 7: Error Severity Distribution
SELECT
error_severity,
COUNT(*)
FROM telemetry
GROUP BY error_severity
ORDER BY COUNT(*) DESC;

-- Analysis 8: CPU Category Distribution
SELECT
cpu_category,
COUNT(*)
FROM telemetry
GROUP BY cpu_category;

-- Analysis 9: Latency Category Distribution
SELECT
latency_category,
COUNT(*)
FROM telemetry
GROUP BY latency_category;

-- Analysis 10: Impact of Latency on Errors
SELECT
latency_category,
ROUND(AVG(error_count)::numeric,2) AS avg_errors
FROM telemetry
GROUP BY latency_category
ORDER BY avg_errors DESC;

-- Analysis 11: Health Score Distribution

SELECT
    CASE
        WHEN device_health_score >= 80 THEN 'Excellent'
        WHEN device_health_score >= 60 THEN 'Good'
        WHEN device_health_score >= 40 THEN 'Fair'
        ELSE 'Poor'
    END AS health_category,
    COUNT(*) AS records
FROM telemetry
GROUP BY health_category
ORDER BY records DESC;

-- Analysis 12: Highest Latency Devices

SELECT
    device_id,
    ROUND(AVG(network_latency_ms)::numeric,2) AS avg_latency
FROM telemetry
GROUP BY device_id
ORDER BY avg_latency DESC
LIMIT 10;

-- Analysis 13: Highest CPU Utilization Devices

SELECT
    device_id,
    ROUND(AVG(cpu_usage)::numeric,2) AS avg_cpu
FROM telemetry
GROUP BY device_id
ORDER BY avg_cpu DESC
LIMIT 10;


