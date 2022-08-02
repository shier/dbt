create view "stg"."AH_UserAlerts_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[Enabled] [Enabled],
	[UserId] [UserID],
	[MakeId] [MakeID],
	[ModelId] [ModelID],
	[YearFrom] [YearFrom],
	[YearTo] [Yearto],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_UserAlerts_Raw]
