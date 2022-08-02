create view "stg"."Auct_Path_InterView__dbt_tmp" as
    
Select
	[PATHID] [PathID],
	cast([PATH] as nvarchar(4000)) [Path],
	[ACTIVE] [Active]
From stg.[Auct_Path_Raw]
