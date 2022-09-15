
  
  if object_id ('"stg"."Auct_Email_Merge_NoNull__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Email_Merge_NoNull__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Email_Merge_NoNull__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Email_Merge_NoNull__dbt_tmp"
    end


   EXEC('create view stg.Auct_Email_Merge_NoNull__dbt_tmp_temp_view as
    
select * FROM [stg].[Auct_Email_Merge] where CustomerAccountID is not null  and EffectiveStartDate is not null and EffectiveEndDate is not null
    ');

  CREATE TABLE "stg"."Auct_Email_Merge_NoNull__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Email_Merge_NoNull__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Email_Merge_NoNull__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Email_Merge_NoNull__dbt_tmp_temp_view"
    end


