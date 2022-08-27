
  
  if object_id ('"stg"."Auct_AM_BuildChain_1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AM_BuildChain_1__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AM_BuildChain_1__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AM_BuildChain_1__dbt_tmp"
    end


   EXEC('create view stg.Auct_AM_BuildChain_1__dbt_tmp_temp_view as
    

 select * from (select * from stg.Auct_AM_BuildChain_0) t  order by t.AddressID
    ');

  CREATE TABLE "stg"."Auct_AM_BuildChain_1__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AM_BuildChain_1__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AM_BuildChain_1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AM_BuildChain_1__dbt_tmp_temp_view"
    end


