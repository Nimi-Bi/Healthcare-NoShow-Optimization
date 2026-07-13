# Healthcare Patient No-Show Optimization Business Insights Report

## Project Overview

This document summarizes the key business questions, SQL analysis results, business insights, and recommendations derived from the Healthcare Patient No-Show Optimization project.

---

# Query 1: Overall Patient No-Show Rate

## Business Question

What percentage of scheduled appointments resulted in patient no-shows?

## Result

| Metric | Value |
|--------|------:|
| Total Appointments | 9,725 |
| Total No-Shows | 1,888 |
| No-Show Rate | 19.41% |

## Business Insight

Nearly one in five scheduled appointments resulted in a patient no-show, highlighting a significant operational and financial challenge for the healthcare organization.

---

# Query 2: No-Shows by Department

## Business Question

Which department records the highest number of patient no-shows?

## Result

| Department | Total No-Shows |
|------------|---------------:|
| Orthopedics | 411 |
| General Medicine | 395 |
| Pediatrics | 378 |
| Cardiology | 364 |
| Dermatology | 340 |

## Business Insight

Orthopedics recorded the highest number of missed appointments, indicating that targeted attendance improvement strategies should be prioritized within this department.

---

# Query 3: SMS Reminder Effectiveness

## Business Question

Do SMS reminders reduce patient no-show rates?

## Result

| SMS Reminder | No-Show Rate |
|--------------|-------------:|
| Sent | 14.97% |
| Not Sent | 30.11% |

## Business Insight

Patients who received SMS reminders were significantly more likely to attend their appointments. SMS reminders reduced the no-show rate by approximately 50%, demonstrating the effectiveness of proactive patient communication.

---

# Query 4: Waiting Time Impact

## Business Question

How does appointment waiting time affect patient attendance?

## Result

| Waiting Time | No-Show Rate |
|--------------|-------------:|
| 0–7 Days | 12.90% |
| 8–14 Days | 15.56% |
| 15–30 Days | 19.16% |
| 31+ Days | 21.99% |

## Business Insight

Patient no-show rates increased consistently as appointment waiting times increased. Patients waiting more than 30 days had the highest likelihood of missing their appointments.

---

# Query 5: No-Show Rate by Day of the Week

## Business Question

Which days of the week experience the highest patient no-show rates?

## Result

| Day | No-Show Rate |
|-----|-------------:|
| Thursday | 20.89% |
| Sunday | 20.68% |
| Saturday | 19.91% |
| Wednesday | 18.91% |
| Monday | 18.82% |
| Tuesday | 18.52% |
| Friday | 18.25% |

## Business Insight

Although Thursday recorded the highest no-show rate, differences across the week were relatively small. This suggests that appointment attendance is influenced more by operational factors such as waiting time and reminder systems than by the specific day of the week.

---

# Executive Summary

The analysis identified **9,725 scheduled appointments**, of which **1,888 resulted in patient no-shows**, producing an overall no-show rate of **19.41%**.

Orthopedics recorded the highest number of missed appointments among all departments, while patients waiting **more than 30 days** experienced the greatest likelihood of missing their appointments. SMS reminders proved highly effective, reducing no-show rates from **30.11%** to **14.97%**. The estimated financial impact of missed appointments exceeded **$325,000**, demonstrating the importance of improving appointment attendance.

Overall, the findings indicate that strengthening reminder programs, reducing appointment waiting times, and prioritizing interventions in high-risk departments could significantly improve operational efficiency, increase provider utilization, and reduce revenue loss.

---

# Business Recommendations

- Expand SMS reminder programs to improve appointment attendance.
- Reduce appointment waiting times where operationally feasible.
- Prioritize no-show reduction initiatives within Orthopedics.
- Monitor patients with appointments scheduled more than 30 days in advance.
- Continue tracking no-show trends to support data-driven operational decisions.