
  
  if object_id ('"dbo"."Auct_OtherDocumentationType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_OtherDocumentationType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_OtherDocumentationType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_OtherDocumentationType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_OtherDocumentationType__dbt_tmp_temp_view as
    
Select
	cast([OtherDocumentationTypeID] as int) [OTHERDOCUMENTATIONTYPEID],
	cast([Title] as nvarchar(4000)) [TITLE],
	cast([Description] as nvarchar(4000)) [DESCRIPTION] 
From stg.[Auct_OtherDocumentationType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_OtherDocumentationType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_OtherDocumentationType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_OtherDocumentationType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_OtherDocumentationType__dbt_tmp_temp_view"
    end


