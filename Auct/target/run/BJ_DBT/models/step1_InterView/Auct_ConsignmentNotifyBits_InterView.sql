create view "dbo_stg"."Auct_ConsignmentNotifyBits_InterView__dbt_tmp" as
    
Select
	[CONSIGNMENTNOTIFYBIT] [ConsignmentNotifyBit],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_ConsignmentNotifyBits_Raw]
