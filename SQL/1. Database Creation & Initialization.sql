-- Database Creation 
create database telco ;

-- Using Telco Database 
use telco ;

-- Table Creation 
create table churn 
(
customer_id	VARCHAR(50),
city	VARCHAR(100),
state	VARCHAR(100),	
country	VARCHAR(100),	
zipcode	VARCHAR(20),
latitude	DECIMAL(9,6),
longitude	DECIMAL(9,6),	
gender	VARCHAR(10),
senior_citizen	varchar(255),
partner varchar(255),
dependents	varchar(255),	
tenure_months	INT,
phone_service	varchar(255),	
multiple_lines	varchar(255),
internet_service	varchar(255),	
online_security	varchar(255),
online_backup	varchar(255),
device_protection	varchar(255),	
tech_support	varchar(255),	
streaming_tv	varchar(255),	
streaming_movies	varchar(255),
contract	varchar(255),
paperless_billing	varchar(255),
payment_method	varchar(255),
monthly_charge	DECIMAL(10,2),	
total_charge	DECIMAL(12,2),	
churn_label	varchar(255),
churn_value	INT	,
churn_score	INT	,
cltv_score	INT	,
churn_reason VARCHAR(255)
);

-- Enabling Local infile on server side 
SET GLOBAL local_infile = 1;

-- Verify Server Settings
SHOW VARIABLES LIKE 'local_infile';

-- Verify Secure Directory
SHOW VARIABLES LIKE 'secure_file_priv';

-- Load the .csv file into table 

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/churn.csv'
INTO TABLE churn
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
 @customer_id,
 @city,
 @state,
 @country,
 @zipcode,
 @latitude,
 @longitude,
 @gender,
 @senior_citizen,
 @partner,
 @dependents,
 @tenure_months,
 @phone_service,
 @multiple_lines,
 @internet_service,
 @online_security,
 @online_backup,
 @device_protection,
 @tech_support,
 @streaming_tv,
 @streaming_movies,
 @contract,
 @paperless_billing,
 @payment_method,
 @monthly_charge,
 @total_charge,
 @churn_label,
 @churn_value,
 @churn_score,
 @cltv_score,
 @churn_reason
)
SET
 customer_id      = @customer_id,
 city             = @city,
 state            = @state,
 country          = @country,
 zipcode          = @zipcode,
 latitude         = NULLIF(@latitude, ''),
 longitude        = NULLIF(@longitude, ''),
 gender           = @gender,
 senior_citizen   = @senior_citizen,
 partner          = @partner,
 dependents       = @dependents,
 tenure_months    = NULLIF(@tenure_months, ''),
 phone_service    = @phone_service,
 multiple_lines   = @multiple_lines,
 internet_service = @internet_service,
 online_security  = @online_security,
 online_backup    = @online_backup,
 device_protection= @device_protection,
 tech_support     = @tech_support,
 streaming_tv     = @streaming_tv,
 streaming_movies = @streaming_movies,
 contract         = @contract,
 paperless_billing= @paperless_billing,
 payment_method   = @payment_method,
 monthly_charge   = NULLIF(@monthly_charge, ''),
 total_charge     = NULLIF(@total_charge, ''),
 churn_label      = @churn_label,
 churn_value      = NULLIF(@churn_value, ''),
 churn_score      = NULLIF(@churn_score, ''),
 cltv_score       = NULLIF(@cltv_score, ''),
 churn_reason     = @churn_reason;

select * from churn 
