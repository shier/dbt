create view "stg"."AH_PaymentprovIDErs_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[BatchCapable] [Batchcapable]
From stg.[AH_PaymentprovIDErs_Raw]
