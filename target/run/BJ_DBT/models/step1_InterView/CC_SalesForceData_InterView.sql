create view "stg"."CC_SalesForceData_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([Lookup] as nvarchar(4000)) [Lookup],
	cast([JsonData] as nvarchar(4000)) [JsonData],
	[IsActive] [IsActive],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_SalesForceData_Raw]
