
  
  if object_id ('"stg"."Auct_SecretQuestions_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SecretQuestions_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SecretQuestions_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SecretQuestions_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SecretQuestions_Final__dbt_tmp_temp_view as
    
Select
	[QuestionID],[Created],[UpdateEventID],[Question] 
From stg.[Auct_SecretQuestions_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_SecretQuestions_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SecretQuestions_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SecretQuestions_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SecretQuestions_Final__dbt_tmp_temp_view"
    end


