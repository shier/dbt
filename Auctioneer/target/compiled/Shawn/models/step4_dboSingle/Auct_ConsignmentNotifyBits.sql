
Select
	cast([ConsignmentNotifyBit] as int) [CONSIGNMENTNOTIFYBIT],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_ConsignmentNotifyBits_FinalView]