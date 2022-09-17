
Select
	cast([Lookup] as nvarchar(4000)) [Lookup],
	cast([JsonData] as nvarchar(4000)) [JsonData],
	cast([IsActive] as bit) [IsActive],
	cast([ID] as int) [Id],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_SalesForceData_FinalView]