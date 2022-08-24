create view "stg"."Auct_MyTable_InterView__dbt_tmp" as
    
Select
	[myTableId] [MyTableID],
	cast([code] as nvarchar(4000)) [Code],
	cast([description] as nvarchar(4000)) [Description]
From stg.[Auct_MyTable_Raw]
