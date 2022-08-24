create view "stg"."Auct_EmailConfiguration_FinalView__dbt_tmp" as
    
Select
	[Host],[Domain],[UserName],[Password] 
From [Auct_EmailConfiguration_Incr]
