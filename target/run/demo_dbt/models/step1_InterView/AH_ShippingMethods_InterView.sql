create view "stg"."AH_ShippingMethods_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[DisplayOrder] [DisplayOrder],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([Name] as nvarchar(4000)) [Name]
From stg.[AH_ShippingMethods_Raw]
