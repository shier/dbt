
Select
	cast([RegisteredOnlineBit] as int) [REGISTEREDONLINEBIT],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_RegisteredOnlineBits_FinalView]