{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([IsActive] as bit) [IsActive],
	cast([Minfraudscore] as float) [Minfraudscore],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([PaymentID] as int) [PaymentID] 
From stg.[CC_Maxmindscore_FinalView]