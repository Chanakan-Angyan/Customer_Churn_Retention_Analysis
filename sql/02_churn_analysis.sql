-- =====================================================
-- Customer Churn & Retention Analysis
-- Churn Analysis
-- Table: telco_customer_churn
-- =====================================================


-- =====================================================
-- 1. Overall Churn Rate
-- =====================================================
 
select
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn;
 
 
-- =====================================================
-- 2. Churn Rate by Contract
-- =====================================================
 
select
    `Contract`,
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn
group by `Contract`
order by churn_rate desc;
 
 
-- =====================================================
-- 3. Churn Rate by Tenure Group
-- =====================================================
 
select
    case
        when `Tenure in Months` between 1  and 12 then '0-12'
        when `Tenure in Months` between 13 and 24 then '13-24'
        when `Tenure in Months` between 25 and 36 then '25-36'
        when `Tenure in Months` between 37 and 48 then '37-48'
        when `Tenure in Months` between 49 and 60 then '49-60'
        else '61+'
    end as tenure_group,
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn
group by tenure_group
order by
    case tenure_group
        when '0-12'  then 1
        when '13-24' then 2
        when '25-36' then 3
        when '37-48' then 4
        when '49-60' then 5
        when '61+'   then 6
    end;
 
 
-- =====================================================
-- 4. Churn Rate by Internet Type
-- =====================================================
 
select
    case
        when `Internet Type` = 'None' then 'No Internet'
        else `Internet Type`
    end as internet_type,
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn
group by internet_type
order by churn_rate desc;
 
 
-- =====================================================
-- 5. Churn Rate by Monthly Charge Group
-- =====================================================
 
select
    case
        when `Monthly Charge` < 40  then '< $40'
        when `Monthly Charge` < 60  then '$40-60'
        when `Monthly Charge` < 80  then '$60-80'
        when `Monthly Charge` < 100 then '$80-100'
        else '> $100'
    end as monthly_charge_group,
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn
group by monthly_charge_group
order by
    case monthly_charge_group
        when '< $40'   then 1
        when '$40-60'  then 2
        when '$60-80'  then 3
        when '$80-100' then 4
        when '> $100'  then 5
    end;
 
 
-- =====================================================
-- 6. Churn Rate by Payment Method
-- =====================================================
 
select
    `Payment Method`,
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn
group by `Payment Method`
order by churn_rate desc;
 
 
-- =====================================================
-- 7. Churn Category
-- =====================================================
 
select
    `Churn Category`,
    count(*) as churned_customers,
    round(
        count(*) / (
            select count(*)
            from telco_customer_churn
            where `Churn Label` = 'Yes'
        ) * 100,
        2
    ) as churn_share
from telco_customer_churn
where `Churn Label` = 'Yes'
group by `Churn Category`
order by churned_customers desc;
 
 
-- =====================================================
-- 8. Churn Reason
-- =====================================================
 
select
    `Churn Reason`,
    count(*) as churned_customers,
    round(
        count(*) / (
            select count(*)
            from telco_customer_churn
            where `Churn Label` = 'Yes'
        ) * 100,
        2
    ) as churn_share
from telco_customer_churn
where `Churn Label` = 'Yes'
group by `Churn Reason`
order by churned_customers desc;
 
 
-- =====================================================
-- 9. Churn Rate by Internet Service
-- =====================================================
 
select
    `Internet Service`,
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn
group by `Internet Service`
order by churn_rate desc;
 
 
-- =====================================================
-- 10. Churn Rate by Online Security
-- =====================================================
 
select
    `Online Security`,
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn
group by `Online Security`
order by churn_rate desc;
 
 
-- =====================================================
-- 11. Churn Rate by Premium Tech Support
-- =====================================================
 
select
    `Premium Tech Support`,
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn
group by `Premium Tech Support`
order by churn_rate desc;
 
 
-- =====================================================
-- 12. Churn Rate by Dependents
-- =====================================================
 
select
    `Dependents`,
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn
group by `Dependents`
order by churn_rate desc;
 
 
-- =====================================================
-- 13. Churn Rate by Senior Citizen
-- =====================================================
 
select
    `Senior Citizen`,
    count(*) as total_customers,
    sum(`Churn Label` = 'Yes') as churned_customers,
    round(sum(`Churn Label` = 'Yes') / count(*) * 100, 2) as churn_rate
from telco_customer_churn
group by `Senior Citizen`
order by churn_rate desc;