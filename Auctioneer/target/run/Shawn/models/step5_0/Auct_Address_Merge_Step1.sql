
  
  if object_id ('"stg"."Auct_Address_Merge_Step1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Merge_Step1__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Address_Merge_Step1__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Address_Merge_Step1__dbt_tmp"
    end


   EXEC('create view stg.Auct_Address_Merge_Step1__dbt_tmp_temp_view as
    

select  
    Created,AddressID 
from stg.[Auct_Address_FinalView] where Created is not NULL
    ');

  CREATE TABLE "stg"."Auct_Address_Merge_Step1__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Address_Merge_Step1__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Address_Merge_Step1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Merge_Step1__dbt_tmp_temp_view"
    end


