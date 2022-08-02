
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, EmailAddress, Password, SecretAnswer, Enabled, Title, DeScripton, Address, City, State, PostalCode, Reason, WinLogon, WinDomain, SMSNotificationNumber, Phone1, Phone2, Cast(QuestionID as varchar), Cast(UpdateEventID as varchar), Cast(SMSNotificationBit as varchar), Cast(DepartmentID as varchar), Cast(LastLoggedin as varchar), Cast(LastActivity as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Users_Inter]
	)
Select * From hashData
