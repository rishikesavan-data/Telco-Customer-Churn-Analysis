-- Business Question

-- 1. What is our total customer base ?
Select count(customer_id) as total_customers
from churn;

-- 2. How many customer have churned ?
Select count(customer_id) as churned_customers
from churn 
where churn_value = 1;

-- 3. What is the overall churn rate ?
with t1 as
		  (
          select count(customer_id) as total_customer from churn 
          ),
	 t2 as 
          (
          select count(customer_id) as churned_customer from churn where churn_label = 'yes'
          )
select (t2.churned_customer/t1.total_customer)*100 as overall_churn_rate 
from t1 
join t2 on t2.churned_customer != t1.total_customer;

-- 4. Why are customer churning (top churn reasons)
select churn_reason, count(*)
from churn
where churn_label = 'yes'
group by churn_reason 
order by count(*) desc;

-- 5. Which customer segement are churning the most ?(gender,senior_citizen,partner,dependents)
select gender,count(*),sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate 
from churn 
group by gender
order by churn_rate desc;
 
select senior_citizen,count(*),sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate 
from churn
group by senior_citizen
order by churn_rate desc;

select partner,count(*),sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate 
from churn
group by partner
order by churn_rate desc;

select dependents,count(*),sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate 
from churn
group by dependents
order by churn_rate desc;

-- 6. Which contract types have the highest churn rate ?
select contract,count(*),sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate 
from churn 
group by contract
order by churn_rate desc;

-- 7. Which serives are most associated with churn ?
select phone_service ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

select multiple_lines ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

select internet_service ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

select online_security ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

select online_backup ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

select device_protection ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

select tech_support ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

select streaming_tv ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

select streaming_movies ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

-- 8. Which payment methods are linked to higher churn ?
select payment_method ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

-- 9. which cites and states contribute the most to churn,and why ?
select city ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

select state ,count(*), sum(churn_value),round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

-- 10. What is the average monthly charge, and how does it differ between churned vs. retained customer ?
select
    case
        when churn_value = 0 then 'Retained'
        when churn_value = 1 then 'Churned'
    end as customer_type,
    count(*) as customer_count,
    round(avg(monthly_charge), 2) as avg_monthly_charge
from churn
group by churn_value;

-- 11. Are higher monthly charges leading to higher churn ?
select 
	case when monthly_charge<30 then 'low (<30)'
		 when monthly_charge between 30 and 60 then 'mediam (30-60)'
         when monthly_charge between 60 and 90 then 'high (60-90)'
         else 'very high (>90)'
	end as Price_bucket,
	count(*) ,
    sum(churn_value),
    round(sum(churn_value)*100/count(*),2) as churn_rate
from churn 
group by 1
order by 4 desc;

-- 12. what is the total revenue (total charge) how much revenue is lost due to churn?
select
    sum(total_charge) as total_revenue,
    sum(case 
            when churn_value = 1 then total_charge 
        end) as revenue_lost_due_to_churn
from churn;

-- 13. What is the average tenure of churned vs retained customers?
select
     case
        when churn_value = 0 then 'Retained'
        when churn_value = 1 then 'Churned'
        end as customer_type ,
	 round(avg(tenure_months),2) as Average_tenure_months
from churn 
where tenure_months>0
group by 1;

-- 14. At what tenure stage are customer most likely to churn ?
select 
	case 
		when tenure_months between 0 and 3 then 'New'
	    when tenure_months between 4 and 12 then 'Early'
        when tenure_months between 13 and 24 then 'Mid'
        when tenure_months between 25 and 48 then 'Loyal'
        when tenure_months between 48 and 72 then 'Very Loyal'
    end as Month_Bucket,
count(*),
sum(churn_value),
round(sum(churn_value)*100/count(*),2) as churn_rate
from churn
group by 1
order by 4 desc;

-- 15. Are High cltv customer churning, and how much value are we losing ?
select 
	case
		when cltv_score between 2003 and 2999 then 'very low'
        when cltv_score between 3000 and 3999 then 'low'
        when cltv_score between 4000 and 4999 then 'mediam'
        when cltv_score between 5000 and 5999 then 'high'
        when cltv_score between 6000 and 6500 then 'very high'
        end as cltv_score_bucket,
round(sum(churn_value)*100/count(*),2) as churn_rate,
sum(case
		when churn_value =1 then total_charge end ) as total_charge
from churn 
group by 1
order by 2 desc;

-- 16. Is paperless billing associated with higher or lower churn
select 
      paperless_billing,
      count(*),
      sum(churn_value),
      round(sum(churn_value)*100/count(*),2) as churn_rate 
from churn
group by 1
order by 4 desc ;


