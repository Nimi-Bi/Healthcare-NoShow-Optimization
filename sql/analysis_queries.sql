-- =====================================
-- HEALTHCARE NO-SHOW OPTIMIZATION
-- SQL ANALYSIS QUERIES
-- =====================================

-- QUERY 1: OVERALL NO-SHOW RATE
-- Business Question:
-- What percentage of scheduled appointments resulted in patient no-shows?
-- =====================================

SELECT
    COUNT(*) AS TotalAppointments,
    SUM(CASE WHEN No_show = 1 THEN 1 ELSE 0 END) AS TotalNoShows,
    ROUND(
        SUM(CASE WHEN No_show = 1 THEN 1 ELSE 0 END) * 100.0 /
        COUNT(*),
        2
    ) AS NoShowRate_Percent
FROM appointment;

-- =====================================
-- QUERY 2: REVENUE LOSS BY DEPARTMENT 
-- Business Question:
-- Which department experiences the highest financial loss due to no-shows?
-- =====================================

SELECT
    Department,
    ROUND(SUM(Estimated_loss), 2) AS TotalRevenueLoss
FROM billing
GROUP BY Department
ORDER BY TotalRevenueLoss DESC;

-- =====================================
-- QUERY 3: SMS REMINDER EFFECTIVENESS 
-- Business Question:
-- Do SMS reminders reduce patient no-show rates?
-- =====================================

SELECT
    SMS_reminder,
    COUNT(*) AS TotalAppointments,
    SUM(CASE WHEN No_show = 1 THEN 1 ELSE 0 END) AS TotalNoShows,
    ROUND(
        SUM(CASE WHEN No_show = 1 THEN 1 ELSE 0 END) * 100.0 /
        COUNT(*),
        2
    ) AS NoShowRate
FROM appointment
GROUP BY SMS_reminder;

-- =====================================
-- QUERY 4: WAITING TIME IMPACT
-- Business Question:
-- How does waiting time affect patient no-show behavior?
-- =====================================

SELECT
CASE
WHEN Waiting_days <= 7 THEN '0-7 Days'
WHEN Waiting_days <= 14 THEN '8-14 Days'
WHEN Waiting_days <= 30 THEN '15-30 Days'
ELSE '31+ Days'
END AS WaitingGroup,

COUNT(*) AS TotalAppointments,

SUM(CASE WHEN No_show = 1 THEN 1 ELSE 0 END) AS TotalNoShows,

ROUND(
    SUM(CASE WHEN No_show = 1 THEN 1 ELSE 0 END) * 100.0
    / COUNT(*),
    2
) AS NoShowRate

FROM appointment

GROUP BY WaitingGroup

ORDER BY
CASE
WHEN WaitingGroup = '0-7 Days' THEN 1
WHEN WaitingGroup = '8-14 Days' THEN 2
WHEN WaitingGroup = '15-30 Days' THEN 3
ELSE 4
END;

-- =====================================
-- QUERY 5: NO-SHOW RATE BY DAY OF WEEK
-- Business Question:
-- Which days of the week experience the highest no-show rates?
-- =====================================

SELECT
Appointment_day,
COUNT() AS TotalAppointments,
SUM(CASE WHEN No_show = 1 THEN 1 ELSE 0 END) AS TotalNoShows,
ROUND(
SUM(CASE WHEN No_show = 1 THEN 1 ELSE 0 END) * 100.0 /
COUNT(),
2
) AS NoShowRate
FROM appointment
GROUP BY Appointment_day
ORDER BY NoShowRate DESC;

-- =====================================
-- EXECUTIVE KPI: TOTAL REVENUE LOSS
-- =====================================

SELECT
ROUND(SUM(Estimated_loss), 2) AS TotalRevenueLoss
FROM billing;