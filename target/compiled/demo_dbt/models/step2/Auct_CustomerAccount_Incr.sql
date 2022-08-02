
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ContactID as varchar), Cast(CompanyID as varchar), Cast(BankAccountID as varchar), Cast(CustomerAccountStatusID as varchar), Cast(UpdateEventID as varchar), Cast(PhoneAssignmentID as varchar), Cast(ProxiBidID as varchar), Cast(OnlineUserID as varchar), Cast(Created as varchar), WebGUID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CustomerAccount_Inter]
	)
Select * From hashData
