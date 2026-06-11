-- ====================================================================
-- PROJECT NAME
-- ====================================================================
-- TOTAL CUSTOMERS 
select count(*) as total_customers
from bank_churn;

-- TOTAL CHURNED CUSTOMERS
select count(*) as churned_customers
from bank_churn
where Exited =1;

-- TOP 5 HIGHEST BALANCE CUSTOMERS
SELECT customerid,balance
from bank_churn
order by balance desc
limit 5;

-- AVERAGE SALARY BY COUNTRY
select Geography,
avg(Estimatedsalary) as Avg_salary
from bank_churn
group by Geography;

-- CUSTOMERS HAVING MORE THAN 2 PRODUCTS
select customer_id,numofproducts
from bank_churn
where numofproducts > 2;

-- ACTIVE CUSTOMERS WHO LEFT
select count(*) as active_churned
from bank_churn
where isactivemember=1
and exited =1;

-- AGE-WISE AVERAGE BALANCE
select age,
avg(Balance) as Avg_balance
from bank_churn
group by age;

-- COUNTRY WITH MAXIMUM CHURN
select Geography,
sum(exited) as churned_customers
from bank_churn
group by Geography
order by churned_customers desc;

-- CREDIT CARD HOLDERS VS NON-HOLDERS
select Hascreditcard,
count(*) as customers
from bank_churn
group by Hascreditcard;

-- AVERAGE TENURE OF CHURNED CUSTOMERS
select avg(Tenure) as Avg_Tenure
FROM BANK_CHURN
WHERE Exited =1;

-- GENDER WISE CHURN
select Gender,
count(*) as customers,
sum(Exited) as churned
from bank_churn
group by Gender;

-- COUNTRY WISE CHURN
select Geography,
count(*) as customers,
sum(Exited) as churned
from bank_churn
group by Geography;

-- ACTIVE VS INACTIVE MEMBERS
select isactivemember,
count(*) as customes,
sum(Exited) as churned
from bank_churn
group by isactivemember;







