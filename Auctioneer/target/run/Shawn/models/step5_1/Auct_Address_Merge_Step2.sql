
  
  if object_id ('"stg"."Auct_Address_Merge_Step2__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Merge_Step2__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Address_Merge_Step2__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Address_Merge_Step2__dbt_tmp"
    end


   EXEC('create view stg.Auct_Address_Merge_Step2__dbt_tmp_temp_view as
    
With idList as (
    select * from stg.Auct_Address_Merge_Step1
),
nullList as (
    select AddressID from stg.[Auct_Address_FinalView]  where Created is NULL
)

select  nullList.AddressID, (select top 1 idList.Created from idList where AddressID<nullList.[AddressID] order by AddressID desc) as Created
from nullList
    ');

  CREATE TABLE "stg"."Auct_Address_Merge_Step2__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Address_Merge_Step2__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Address_Merge_Step2__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Merge_Step2__dbt_tmp_temp_view"
    end


