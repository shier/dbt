{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([IsActive] as bit) [IsActive],
	cast([UserID] as int) [UserID],
	cast([PaymentID] as int) [PaymentID],
	cast([CreateDate] as datetime) [Created_Order],
	cast([ModifyDate] as datetime) [ModifiedDate_Order] 
From stg.[CC_Order_FinalView]