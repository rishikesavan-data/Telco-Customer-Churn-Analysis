-- Verify the rows 
SELECT COUNT(*) FROM churn; -- Total rows = 7043


-- checking duplicates
select customer_id,count(*)
from churn 
group by customer_id 
having count(*)>1; -- no duplicates 

-- Checking Nulls in each columns 
select sum(case when customer_id is null then 1 end) as Null_customers,
	   sum(case when city is null then 1 end) as Null_city,
       sum(case when state is null then 1 end) as Null_states,
       sum(case when country is null then 1 end) as Null_country,
       sum(case when zipcode is null then 1 end) as Null_zipcode,
       sum(case when latitude is null then 1 end) as Null_latitude,
       sum(case when longitude is null then 1 end) as Null_longitude,
       sum(case when gender is null then 1 end) as Null_gender,
       sum(case when senior_citizen is null then 1 end) as Null_senior_citizen,
       sum(case when partner is null then 1 end) as Null_partner,
       sum(case when dependents is null then 1 end) as Null_dependents,
       sum(case when tenure_months is null then 1 end) as Null_tenure_months,
       sum(case when phone_service is null then 1 end) as Null_phone_service,
       sum(case when multiple_lines is null then 1 end) as Null_multiple_lines,
       sum(case when internet_service is null then 1 end) as Null_internet_service,
       sum(case when online_security is null then 1 end) as Null_online_security,
       sum(case when online_backup is null then 1 end) as Null_online_backup,
       sum(case when device_protection is null then 1 end) as Null_device_protection,
       sum(case when tech_support is null then 1 end) as Null_tech_support,
       sum(case when streaming_tv is null then 1 end) as Null_streaming_tv,
       sum(case when streaming_movies is null then 1 end) as Null_streaming_movies,
       sum(case when contract is null then 1 end) as Null_contract,
       sum(case when paperless_billing is null then 1 end) as Null_paperless_biling,
       sum(case when payment_method is null then 1 end) as Null_payment_method,
       sum(case when monthly_charge is null then 1 end) as Null_monthly_charge,
       sum(case when total_charge is null then 1 end) as Null_total_charge,  -- total_charge column have 11 nulls 
       sum(case when churn_label is null then 1 end) as Null_churn_label,
       sum(case when churn_value is null then 1 end) as Null_churn_value,
       sum(case when churn_score is null then 1 end) as Null_churn_score,
       sum(case when cltv_score is null then 1 end) as Null_cltv_score,
       sum(case when churn_reason is null then 1 end) as Null_churn_reason
from churn;

-- Checking blanks in each columns 
select sum(case when customer_id ='' then 1 end) as Null_customers,
	   sum(case when city ='' then 1 end) as Null_city,
       sum(case when state ='' then 1 end) as Null_states,
       sum(case when country ='' then 1 end) as Null_country,
       sum(case when zipcode ='' then 1 end) as Null_zipcode,
       sum(case when latitude ='' then 1 end) as Null_latitude,
       sum(case when longitude ='' then 1 end) as Null_longitude,
       sum(case when gender ='' then 1 end) as Null_gender,
       sum(case when senior_citizen ='' then 1 end) as Null_senior_citizen,
       sum(case when partner ='' then 1 end) as Null_partner,
       sum(case when dependents ='' then 1 end) as Null_dependents,
       sum(case when tenure_months ='' then 1 end) as Null_tenure_months, -- tenure_months have 11 blanks 
       sum(case when phone_service ='' then 1 end) as Null_phone_service,
       sum(case when multiple_lines ='' then 1 end) as Null_multiple_lines,
       sum(case when internet_service ='' then 1 end) as Null_internet_service,
       sum(case when online_security ='' then 1 end) as Null_online_security,
       sum(case when online_backup ='' then 1 end) as Null_online_backup,
       sum(case when device_protection ='' then 1 end) as Null_device_protection,
       sum(case when tech_support ='' then 1 end) as Null_tech_support,
       sum(case when streaming_tv ='' then 1 end) as Null_streaming_tv,
       sum(case when streaming_movies ='' then 1 end) as Null_streaming_movies,
       sum(case when contract ='' then 1 end) as Null_contract,
       sum(case when paperless_billing ='' then 1 end) as Null_paperless_biling,
       sum(case when payment_method ='' then 1 end) as Null_payment_method,
       sum(case when monthly_charge ='' then 1 end) as Null_monthly_charge,
       sum(case when total_charge ='' then 1 end) as Null_total_charge,
       sum(case when churn_label ='' then 1 end) as Null_churn_label,
       sum(case when churn_value ='' then 1 end) as Null_churn_value, -- churn_value has 5174 blacks
       sum(case when churn_score ='' then 1 end) as Null_churn_score,
       sum(case when cltv_score ='' then 1 end) as Null_cltv_score,
       sum(case when churn_reason ='' then 1 end) as Null_churn_reason -- churn_reason has 5174 blanks
from churn;

--

select distinct city from churn; -- cities = 1129 rows
select distinct state from churn; -- states = 1 row , mistake
select distinct country from churn; -- country = 1 rows
select distinct gender from churn; -- gender = 2 rows
select distinct senior_citizen from churn; -- senior_citizen = 2 rows (yes/ no)
select distinct partner from churn; -- partner = 2 rows (yes/ no)
select distinct dependents from churn; -- dependents = 2 rows (yes/ no)
select distinct phone_service from churn; -- phone_service = 2 rows (yes/ no)
select distinct multiple_lines from churn; -- multiple_lines = 3 rows (yes/ no/ no phone service)
select distinct internet_service from churn; -- internet_service = 3 rows (DSL/ Fiber optic/ no)
select distinct online_security from churn; -- online_security = 3 rows (yes/ no/ no internet service)
select distinct online_backup from churn; -- online_backup = 3 rows (yes/ no/ no internet service)
select distinct device_protection from churn; -- device_protection = 3 rows (yes/ no/ no internet service)
select distinct tech_support from churn; -- tech_support = 3 rows (yes/ no/ no internet service)
select distinct streaming_tv from churn; -- streaming_tv = 3 rows (yes/ no/ no internet service)
select distinct streaming_movies from churn; -- streaming_movies = 3 rows (yes/ no/ no internet service)
select distinct contract from churn; -- contract =3 rows (month-to-month/ two year/ one year)
select distinct paperless_billing from churn; -- paperless_billing = 2 rows (yes/ no)
select distinct payment_method from churn; -- payment_method = 4 rows (Mailed check/ Electronic check/ Bank transfer/ Credit card)
select distinct churn_label from churn; -- churn_lable = 2 rows (yes/ no)
select distinct churn_reason from churn; -- Churn_reason = 21 rows


/* Issues 

   11 nulls in total charges column -- new customer 
   11 blanks in tenure month column -- new customer 
   5174 blacks in churn value  -- retained customer 
   5174 blacks in churn reason -- retained customer 
   this people have no values, because they didn't leave us 
   
   */

   

