{{ config(materialized='view',schema='stg')}}

WITH PhoneCol AS (
   	SELECT 
    	[No],[Name],[Name2],[Address],[Address2],[City],[State],[CountryCode],[PostalCode],
      	TRIM(REPLACE(TRANSLATE(UPPER(PhoneNo), '()-.,/+?_&;"@=', '              '), ' ', '')) AS PhoneNo,
      	[Email],[HomePage],[Taxliable],[FederalIDno],[1099Code],[Status],[StatusMessage],[WrotetoNavision] 
   	From [Auct_NavisionVendorBuffer_Incr]
)
SELECT 
    [No],[Name],[Name2],[Address],[Address2],[City],[State],[CountryCode],[PostalCode],
   	CASE
      WHEN PhoneNo = '' 
         THEN NULL
      WHEN PhoneNo NOT LIKE '%[^0+$]%'
         THEN NULL
      WHEN TRIM(PhoneNo) IN ('NA', 'NONE', 'N', 'UNKNOWN', 'TEST')
         THEN NULL  
      WHEN Phoneno LIKE '%SAM%' 
         THEN NULL
      WHEN PhoneNo LIKE '%[0-9]%' AND ISNUMERIC(RIGHT(PhoneNo, 1)) = 0 
         THEN SUBSTRING([PhoneNo], 1 , LEN([PhoneNo]) - PATINDEX('%[0-9]%', REVERSE([PhoneNo])))               
      WHEN PhoneNo LIKE '%[0-9]EXT[0-9]%' OR -- Standardize phone extension
           PhoneNo LIKE '%[0-9]EST[0-9]%' OR
           PhoneNo LIKE '%[0-9]XTN[0-9]%' OR
           PhoneNo LIKE '%[0-9]XT[0-9]%' OR
           PhoneNo LIKE '%[0-9]EX[0-9]%' OR
           PhoneNo LIKE '%[0-9]X[0-9]%' OR
           PhoneNo LIKE '%[0-9]E[0-9]%'
         THEN replace(replace(replace(translate(PhoneNo, 'ENSTX', '#####'), '#', '+-'), '-+', ''), '+-', ' EXT ')
      ELSE PhoneNo
    END AS PhoneNo,
    [Email],[HomePage],[Taxliable],[FederalIDno],[1099Code],[Status],[StatusMessage],[WrotetoNavision] 

FROM 
    PhoneCol