create view "stg"."Auct_SysschEMAArticles_FinalView__dbt_tmp" as
    
Select
	[ArtID],[Creation_Script],[Description],[Dest_OBJect],[Name],[OBJID],[PubID],[Pre_Creation_cmd],[Status],[Type],[SchEMA_Option],[Dest_Owner] 
From stg.[Auct_SysschEMAArticles_Incr] 
Where [dbt_valid_to] is null
