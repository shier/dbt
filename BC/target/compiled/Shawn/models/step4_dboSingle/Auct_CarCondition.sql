
Select
	cast([WebActive] as bit) [WEBACTIVE],
	cast([Active] as bit) [ACTIVE],
	cast([CarConditionID] as int) [CARCONDITIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([CarConditionBit] as int) [CARCONDITIONBIT] 
From stg.[Auct_CarCondition_FinalView]