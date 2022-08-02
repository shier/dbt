create view "stg"."Auct_SysDiagrams_FinalView__dbt_tmp" as
    
Select
	[Name],[Principal_ID],[Diagram_ID],[Version],[Definition] 
From [Auct_SysDiagrams_Incr]
