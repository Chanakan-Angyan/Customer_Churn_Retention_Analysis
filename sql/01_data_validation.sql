-- =====================================================
-- Customer Churn & Retention Analysis
-- SQL Data Validation
-- Table: telco_customer_churn
-- =====================================================


-- =====================================================
-- 1. Row Count
-- =====================================================

select count(*) as total_rows
from telco_customer_churn;


-- =====================================================
-- 2. Column Count
-- =====================================================

select count(*) as total_columns
from information_schema.columns
where table_schema = database()
    and table_name = 'telco_customer_churn';


-- =====================================================
-- 3. Duplicate Customer ID
-- =====================================================

select 
    count(*) - count(distinct `Customer ID`) as duplicate_customer_ids
from telco_customer_churn;


-- =====================================================
-- 4. NULL Values
-- =====================================================

-- 4.1 check for true nulls
select
    sum(`Offer` is null)           as offer_nulls,
    sum(`Internet Type` is null)   as internet_type_nulls,
    sum(`Churn Category` is null)  as churn_category_nulls,
    sum(`Churn Reason` is null)    as churn_reason_nulls
from telco_customer_churn;

-- 4.2 check for empty strings
select
    sum(`Offer` = '')          as offer_empty,
    sum(`Internet Type` = '')  as internet_type_empty,
    sum(`Churn Category` = '') as churn_category_empty,
    sum(`Churn Reason` = '')   as churn_reason_empty
from telco_customer_churn;

-- 4.3 check for blank (whitespace-only) values
select
    sum(trim(`Offer`) = '')         as offer_blank,
    sum(trim(`Internet Type`) = '') as internet_type_blank
from telco_customer_churn;

-- 4.4 inspect actual offer values and lengths
select distinct
    concat('[', `Offer`, ']') as offer_value,
    length(`Offer`)           as offer_length
from telco_customer_churn
order by offer_length;

-- 4.5 inspect actual internet type values and lengths
select distinct
    concat('[', `Internet Type`, ']') as internet_type_value,
    length(`Internet Type`)           as internet_type_length
from telco_customer_churn
order by internet_type_length;


-- =====================================================
-- 5. Churn Label
-- =====================================================

select
    `Churn Label`,
    count(*) as customer_count
from telco_customer_churn
group by `Churn Label`
order by `Churn Label`;


-- =====================================================
-- 6. Customer Status
-- =====================================================

select
    `Customer Status`,
    count(*) as customer_count
from telco_customer_churn
group by `Customer Status`
order by `Customer Status`;


-- =====================================================
-- 7. Contract
-- =====================================================

select
    `Contract`,
    count(*) as customer_count
from telco_customer_churn
group by `Contract`
order by `Contract`;


-- =====================================================
-- 8. Tenure in Months
-- =====================================================

select
    min(`Tenure in Months`)          as min_tenure,
    max(`Tenure in Months`)          as max_tenure,
    round(avg(`Tenure in Months`), 2) as avg_tenure
from telco_customer_churn;


-- =====================================================
-- 9. Monthly Charge
-- =====================================================

select
    min(`Monthly Charge`)          as min_monthly_charge,
    max(`Monthly Charge`)          as max_monthly_charge,
    round(avg(`Monthly Charge`), 2) as avg_monthly_charge
from telco_customer_churn;


-- =====================================================
-- 10. Revenue & Charges Validation
-- =====================================================

select
    min(`Total Charges`)           as min_total_charges,
    max(`Total Charges`)           as max_total_charges,
    round(avg(`Total Charges`), 2)  as avg_total_charges,
    min(`Total Revenue`)           as min_total_revenue,
    max(`Total Revenue`)           as max_total_revenue,
    round(avg(`Total Revenue`), 2)  as avg_total_revenue
from telco_customer_churn;
