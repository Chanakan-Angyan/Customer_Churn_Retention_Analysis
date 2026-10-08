# Customer Churn & Retention Analysis

## 1. Executive Summary

This analysis examines churn and retention patterns across 7,043 customers. Overall, 1,869 customers churned, resulting in an overall churn rate of 26.54%.

The analysis identified several customer segments with notably higher churn rates, particularly Month-to-Month customers, customers in their first year, Fiber Optic customers, and customers with higher monthly charges. Competitive pressure was also the most frequently reported churn category.


---

## 2. Key Findings

### 2.1 Contract Risk

Month-to-Month customers have the highest churn rate at **45.84%**, compared with **10.71%** for One Year contracts and **2.55%** for Two Year contracts.

---

### 2.2 Early-Tenure Risk

Customers with shorter tenure show considerably higher churn rates. The **0–12 month** group has the highest churn rate at **47.44%**, while the rate declines as customer tenure increases.

| Tenure Group | Churn Rate |
| ------------ | ---------: |
| 0–12 Months  |     47.44% |
| 13–24 Months |     28.71% |
| 25–36 Months |     21.63% |
| 37–48 Months |     19.03% |
| 49–60 Months |     14.42% |
| 61+ Months   |      6.61% |


---

### 2.3 Internet Type

Fiber Optic customers have the highest churn rate among Internet Type segments at **40.72%**, followed by Cable at **25.66%** and DSL at **18.58%**.

Customers without Internet service have the lowest churn rate at **7.40%**.

The relatively high churn rate among Fiber Optic customers suggests that this segment should receive additional attention when evaluating service experience, pricing, and competitive factors.

---

### 2.4 Monthly Charges

Churn rates vary across monthly charge groups. The **$80–100** group has the highest churn rate at **36.91%**, followed by the **$60–80** group at **32.21%**.

| Monthly Charge Group | Churn Rate |
| -------------------- | ---------: |
| < $40                |     11.59% |
| $40–60               |     25.79% |
| $60–80               |     32.21% |
| $80–100              |     36.91% |
| $100+               |     28.30% |

This pattern suggests that customers with higher monthly charges may represent a higher-risk segment and should be evaluated in terms of perceived value and service experience.

---

### 2.5 Churn Reasons

**Competitor** is the largest reported churn category, accounting for **841 churned customers**, followed by Attitude (314), Dissatisfaction (303), Price (211), and Other (200).

Within the detailed churn reasons, competitor-related reasons such as better devices and better offers are among the most frequently reported.

This highlights competitive pressure as an important area for customer retention analysis.

---

## 3. Business Insights

The analysis highlights several areas that can help prioritize retention efforts:

* **Month-to-Month customers** represent the highest contract-related churn risk.
* **New customers** are particularly vulnerable during their first 12 months.
* **Fiber Optic customers** show relatively high churn compared with other Internet Type segments.
* **Higher monthly charge segments** show relatively higher churn rates.
* **Competitive pressure** is the most prominent reported churn category.

---

## 4. Data Notes & Limitations

* The analysis is based on **7,043 customer records**.
* Churn rates are calculated within the relevant customer segments.
* Churn Category and Churn Reason analysis is based on **churned customers only**.
* The findings describe observed patterns and associations in the dataset.
* The analysis does not establish direct causal relationships between customer characteristics and churn.
