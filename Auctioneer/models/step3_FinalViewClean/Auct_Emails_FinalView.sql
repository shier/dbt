{{ config(materialized='view',schema='stg')}}
With Auct_Emails_Ex As(
	Select
	[EmailID],[EmailAddress],[ContactID],[CustomerAccountID],[Use_C] as [Use],[Created],[UpdateEventID],[EmailBlastOptin],
	[EmailBlastOptinPartners],[Active] 
	From stg.[Auct_Emails_Incr] 
	Where [dbt_valid_to] is null
),
stg1 AS(
    SELECT 
    NULLIF(EMAILID, '') AS EmailID,
    EmailAddress,
    CASE
        WHEN EmailAddress LIKE '%@@%' -- remove redudant at characters
            THEN REPLACE(EmailAddress, '@@', '@')
        WHEN EmailAddress LIKE '_%@_% / _%@_%' AND LEN(EmailAddress) - LEN(REPLACE(EmailAddress, ' / ', '')) = 3 -- replace slash with space when it is between two EmailAddresss
            THEN REPLACE(EmailAddress, ' / ', ' ')
        ELSE EmailAddress
    END AS Email_Cleaned,
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
    EmailID,EmailAddress,
    CASE         
        WHEN Email_Cleaned = '' OR -- empty string
              Email_Cleaned NOT LIKE '_%@_%._%' OR -- invalid Email format
              Email_Cleaned NOT LIKE '%[a-z0-9!#$%&''*/=?^_`{|}~+-]%' OR -- only these characters are allowed
              /*local-part*/
              Email_Cleaned LIKE '._%' OR -- dot cannot be the first character
              Email_Cleaned LIKE '_%.@_%' OR -- dot cannot be the last character
              Email_Cleaned LIKE '%..%' OR -- dot cannot appear consecutively
              (Email_Cleaned LIKE '% %' AND LEN(Email_Cleaned) - LEN(REPLACE(Email_Cleaned, '@', '')) = 1) OR -- body cannot contains empty space
              /*domain-part*/
              SUBSTRING(Email_Cleaned, CHARINDEX('@',Email_Cleaned), LEN(Email_Cleaned)) NOT LIKE '%[^a-z0-9.-]%' OR -- domain contains invalid characters
              Email_Cleaned LIKE '%@[-0-9]%' OR -- domain starts with hyphen or digit
              Email_Cleaned LIKE '_%-' -- domain ends with hpthen
            THEN NULL
        WHEN Email_Cleaned LIKE '%_.com[a-z0-9]%' -- separate multiple emails with space
            THEN REPLACE(Email_Cleaned, '.com', '.com ')        
        WHEN Email_Cleaned LIKE '_%@_%@_%' AND Email_Cleaned NOT LIKE '% %' -- remove email that contains more than one at
            THEN NULL
        ELSE Email_Cleaned
    END AS Email_Cleaned,
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
    EmailID,EmailAddress as [Email],
    CASE
        WHEN Email_Cleaned LIKE '%cc:%'
        THEN REPLACE(Email_Cleaned, 'cc:', '')
        WHEN Email_Cleaned LIKE '%business:%'
        THEN REPLACE(Email_Cleaned, 'business:', '')
        ELSE LOWER(Email_Cleaned)
    END AS Email_Cleaned,
    ContactID,
    CustomerAccountID,
    [Use],
    Created,
    UpdateEventID,
    EmailBlastOptIn,
    EmailBlastOptInPartners,
    IsActive as [Active]
FROM stg2