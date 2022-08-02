
  
  if object_id ('"stg"."Auct_FormsHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_FormsHistory_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_FormsHistory_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_FormsHistory_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_FormsHistory_Inter__dbt_tmp_temp_view as
    
Select
	[FORMHISTORYID] [FormHistoryID],
	[FORMID] [FormID],
	cast([FILETOKEN] as nvarchar(4000)) [FileToken],
	cast([CHANGEDESCRIPTION] as nvarchar(4000)) [ChangeDescription],
	[CREATEDBYUSERID] [CreatedByUserID],
	[CREATEDDATETIME] [CreatedDateTime]
From stg.[Auct_FormsHistory_Raw]
    ');

  CREATE TABLE "stg"."Auct_FormsHistory_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_FormsHistory_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_FormsHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_FormsHistory_Inter__dbt_tmp_temp_view"
    end


