{{ config(materialized='view',schema='stg')}}
With Auct_Emails_Ex As(
	Select
	[EmailID],[EmailAddress],[ContactID],[CustomerAccountID],[Use],[Created],[UpdateEventID],[EmailBlastOptin],
	[EmailBlastOptinPartners],[Active] 
	From stg.[Auct_Emails_Incr] 
	Where [dbt_valid_to] is null
),
stg1 AS(
    SELECT 
    NULLIF(EMAILID, '') AS EmailID,
    CASE
        WHEN EmailAddress LIKE '%@@%' -- remove redudant at characters
            THEN REPLACE(EmailAddress, '@@', '@')
        WHEN EmailAddress LIKE '_%@_% / _%@_%' AND LEN(EmailAddress) - LEN(REPLACE(EmailAddress, ' / ', '')) = 3 -- replace slash with space when it is between two EmailAddresss
            THEN REPLACE(EmailAddress, ' / ', ' ')
        ELSE EmailAddress
    END AS Email,
    NULLIF(CONTACTID, '') AS ContactID,
    NULLIF(CUSTOMERACCOUNTID, '') AS CustomerAccountID,
    NULLIF([USE], '') AS [Use],
    NULLIF(CREATED, '') AS Created,
    NULLIF(UPDATEEVENTID, '') AS UpdateEventID,
    NULLIF(EMAILBLASTOPTIN, '') AS EmailBlastOptIn,
    NULLIF(EMAILBLASTOPTINPARTNERS, '') AS EmailBlastOptInPartners,
    NULLIF(ACTIVE, '') AS IsActive 
FROM 
    Auct_Emails_Ex
),
stg2 AS(
    SELECT
    EmailID,
    CASE         
        WHEN Email = '' OR -- empty string
              Email NOT LIKE '_%@_%._%' OR -- invalid Email format
              Email NOT LIKE '%[a-z0-9!#$%&''*/=?^_`{|}~+-]%' OR -- only these characters are allowed
              /*local-part*/
              Email LIKE '._%' OR -- dot cannot be the first character
              Email LIKE '_%.@_%' OR -- dot cannot be the last character
              Email LIKE '%..%' OR -- dot cannot appear consecutively
              (Email LIKE '% %' AND LEN(Email) - LEN(REPLACE(Email, '@', '')) = 1) OR -- body cannot contains empty space
              /*domain-part*/
              SUBSTRING(Email, CHARINDEX('@',Email), LEN(Email)) NOT LIKE '%[^a-z0-9.-]%' OR -- domain contains invalid characters
              Email LIKE '%@[-0-9]%' OR -- domain starts with hyphen or digit
              Email LIKE '_%-' -- domain ends with hpthen
            THEN NULL
        WHEN Email LIKE '%_.com[a-z0-9]%' -- separate multiple emails with space
            THEN REPLACE(Email, '.com', '.com ')        
        WHEN Email LIKE '_%@_%@_%' AND Email NOT LIKE '% %' -- remove email that contains more than one at
            THEN NULL
        ELSE Email
    END AS Email,
    ContactID,
    CustomerAccountID,
    [Use],
    Created,
    UpdateEventID,
    EmailBlastOptIn,
    EmailBlastOptInPartners,
    IsActive     
FROM 
    stg1
)
SELECT
    EmailID,
    CASE
        WHEN Email LIKE '%cc:%'
        THEN REPLACE(Email, 'cc:', '')
        WHEN Email LIKE '%business:%'
        THEN REPLACE(Email, 'business:', '')
        ELSE LOWER(Email)
    END AS EmailAddress,
    ContactID,
    CustomerAccountID,
    [Use],
    Created,
    UpdateEventID,
    EmailBlastOptIn,
    EmailBlastOptInPartners,
    IsActive as [Active]
FROM stg2