{{ config(materialized='view',schema='stg')}}
Select
	[CONSIGNMENTNOTIFYBIT] [ConsignmentNotifyBit],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_ConsignmentNotifyBits_Raw]
