
  
  if object_id ('"stg"."Auct_SysDiagrams_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysDiagrams_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysDiagrams_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysDiagrams_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysDiagrams_Final__dbt_tmp_temp_view as
    
Select
	[Principal_ID],[Diagram_ID],[Version],[Definition],[Name] 
From [Auct_SysDiagrams_Incr]
    ');

  CREATE TABLE "stg"."Auct_SysDiagrams_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysDiagrams_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysDiagrams_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysDiagrams_Final__dbt_tmp_temp_view"
    end


