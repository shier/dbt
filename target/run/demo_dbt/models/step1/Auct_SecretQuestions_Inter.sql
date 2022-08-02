
  
  if object_id ('"stg"."Auct_SecretQuestions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SecretQuestions_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SecretQuestions_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SecretQuestions_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SecretQuestions_Inter__dbt_tmp_temp_view as
    
Select
	[QUESTIONID] [QuestionID],
	cast([QUESTION] as nvarchar(4000)) [Question],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SecretQuestions_Raw]
    ');

  CREATE TABLE "stg"."Auct_SecretQuestions_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SecretQuestions_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SecretQuestions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SecretQuestions_Inter__dbt_tmp_temp_view"
    end


