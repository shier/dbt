{{ config(materialized='view',schema='stg')}}

WITH PhoneCol AS (
	Select
		[UsersID],[Name],[EmailAddress],[Password],[QuestionID],[SecretAnswer],[LastLoggedin],[LastActivity],[Enabled],[Reason],[WinLogon],[WinDomain],[Created],[UpdateEventID],[SMSNotificationNumber],[SMSNotificationBit],[DepartmentID],
		REPLACE(TRANSLATE(UPPER(Phone1), '()-.,/+?_&;"@=', '              '), ' ', '') AS Phone1,
		REPLACE(TRANSLATE(UPPER(Phone2), '()-.,/+?_&;"@=', '              '), ' ', '') AS Phone2,
		[Title],[DeScripton],[Address],[City],[State],[PostalCode] 
	From stg.[Auct_Users_Incr] 
	Where [dbt_valid_to] is null
)
SELECT 
	[UsersID],[Name],[EmailAddress],[Password],[QuestionID],[SecretAnswer],[LastLoggedin],[LastActivity],[Enabled],[Reason],[WinLogon],[WinDomain],[Created],[UpdateEventID],[SMSNotificationNumber],[SMSNotificationBit],[DepartmentID],
   
   	CASE
      WHEN Phone1 = '' 
         THEN NULL
      WHEN Phone1 NOT LIKE '%[^0+$]%'
         THEN NULL
      WHEN Phone1 LIKE '%[0-9]%' AND ISNUMERIC(RIGHT(Phone1, 1)) = 0 
         THEN SUBSTRING([Phone1], 1 , LEN([Phone1]) - PATINDEX('%[0-9]%', REVERSE([Phone1]))) 
      WHEN Phone1 LIKE '%SAM%' 
         THEN NULL
      ELSE Phone1
   	END AS Phone1,
   	CASE
      WHEN Phone2 = '' 
         THEN NULL
      WHEN Phone2 NOT LIKE '%[^0+$]%'
         THEN NULL
      WHEN Phone2 LIKE '%[0-9]%' AND ISNUMERIC(RIGHT(Phone2, 1)) = 0 
         THEN SUBSTRING([Phone2], 1 , LEN([Phone2]) - PATINDEX('%[0-9]%', REVERSE([Phone2]))) 
      WHEN Phone2 LIKE '%SAM%' 
         THEN NULL
      ELSE Phone2
   	END AS Phone2,
   	[Title],[DeScripton],[Address],[City],[State],[PostalCode] 
FROM 
    PhoneCol