create view "stg"."Auct_Tmp_SEMA_FinalView__dbt_tmp" as
    
Select
	[First_Name],[Last_Name],[Email] 
From [Auct_Tmp_SEMA_Incr]
