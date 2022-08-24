{{ config(materialized='view',schema='stg')}}
with Auct_BidLimitOverageEmail_Ex as (
	Select
	[EmailAddress],[IsActive] 
	From stg.[Auct_BidLimitOverageEmail_Incr] 
	Where [dbt_valid_to] is null
),
stg1 AS(
    SELECT 
    CASE
        WHEN EMAILADDRESS LIKE '%@@%' -- remove redudant at characters
            THEN REPLACE(EMAILADDRESS, '@@', '@')
        WHEN EMAILADDRESS LIKE '_%@_% / _%@_%' AND LEN(EMAILADDRESS) - LEN(REPLACE(EMAILADDRESS, ' / ', '')) = 3 -- replace slash with space when it is between two emails
            THEN REPLACE(EMAILADDRESS, ' / ', ' ')
        ELSE EMAILADDRESS
    END AS EmailAddress,
    ISACTIVE AS IsActive 
FROM 
    Auct_BidLimitOverageEmail_Ex
),
stg2 AS(
    SELECT
    CASE         
        WHEN EmailAddress = '' OR -- empty string
              EmailAddress NOT LIKE '_%@_%._%' OR -- invalid email format
              EmailAddress NOT LIKE '%[a-z0-9!#$%&''*/=?^_`{|}~+-]%' OR -- only these characters are allowed
              /*local-part*/
              EmailAddress LIKE '._%' OR -- dot cannot be the first character
              EmailAddress LIKE '_%.@_%' OR -- dot cannot be the last character
              EmailAddress LIKE '%..%' OR -- dot cannot appear consecutively
              (EmailAddress LIKE '% %' AND LEN(EmailAddress) - LEN(REPLACE(EmailAddress, '@', '')) = 1) OR -- body cannot contains empty space
              /*domain-part*/
              SUBSTRING(EmailAddress, CHARINDEX('@',EmailAddress), LEN(EmailAddress)) NOT LIKE '%[^a-z0-9.-]%' OR -- domain contains invalid characters
              EmailAddress LIKE '%@[-0-9]%' OR -- domain starts with hyphen or digit
              EmailAddress LIKE '_%-' -- domain ends with hpthen
            THEN NULL
        WHEN EmailAddress LIKE '%_.com[a-z0-9]%' -- separate multiple emails with space
            THEN REPLACE(EmailAddress, '.com', '.com ')        
        WHEN EmailAddress LIKE '_%@_%@_%' AND EmailAddress NOT LIKE '% %' -- remove email that contains more than one at
            THEN NULL
        ELSE EmailAddress
    END AS EmailAddress,
    IsActive   
FROM 
    stg1
)
SELECT
    CASE
        WHEN EmailAddress LIKE '%cc:%'
        THEN REPLACE(EmailAddress, 'cc:', '')
        WHEN EmailAddress LIKE '%business:%'
        THEN REPLACE(EmailAddress, 'business:', '')
        ELSE LOWER(EmailAddress)
    END AS EmailAddress,
    IsActive 
FROM stg2