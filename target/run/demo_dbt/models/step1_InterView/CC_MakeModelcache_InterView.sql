create view "stg"."CC_MakeModelcache_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[IsActive] [IsActive],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	[Year] [Year],
	[VehicleCount] [VehicleCount],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_MakeModelcache_Raw]
