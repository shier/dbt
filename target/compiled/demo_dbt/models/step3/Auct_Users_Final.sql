
Select
	[UsersID],[Name],[EmailAddress],[Password],[QuestionID],[SecretAnswer],[LastLoggedin],[LastActivity],[Enabled],[Reason],[WinLogon],[WinDomain],[Created],[UpdateEventID],[SMSNotificationNumber],[SMSNotificationBit],[DepartmentID],[Phone1],[Phone2],[Title],[DeScripton],[Address],[City],[State],[PostalCode] 
From stg.[Auct_Users_Incr] 
Where [dbt_valid_to] is null