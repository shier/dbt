{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([DisplayDescription] as nvarchar(4000)) [DisplayDescription],
	[Price] [Price],
	[IsActive] [IsActive],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_Product_Raw]
