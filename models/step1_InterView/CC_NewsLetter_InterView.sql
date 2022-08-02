{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[IsActive] [IsActive],
	cast([Email] as nvarchar(4000)) [Email],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_NewsLetter_Raw]
