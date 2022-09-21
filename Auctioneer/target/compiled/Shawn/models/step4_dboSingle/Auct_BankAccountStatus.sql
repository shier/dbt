
Select
	cast([BankAccountStatusID] as int) [BANKACCOUNTSTATUSID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_BankAccountStatus_FinalView]