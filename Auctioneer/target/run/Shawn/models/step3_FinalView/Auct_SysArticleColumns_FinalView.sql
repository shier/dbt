create view "stg"."Auct_SysArticleColumns_FinalView__dbt_tmp" as
    
Select
	[ArtID],[ColID],[Is_udt],[Is_xml],[Is_Max] 
From [Auct_SysArticleColumns_Incr] 
Where [dbt_valid_to] is null
