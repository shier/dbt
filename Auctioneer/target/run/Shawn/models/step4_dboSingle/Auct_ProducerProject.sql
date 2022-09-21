
  
  if object_id ('"dbo"."Auct_ProducerProject__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ProducerProject__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ProducerProject__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ProducerProject__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ProducerProject__dbt_tmp_temp_view as
    
Select
	cast([ProducerProjectID] as int) [PRODUCERPROJECTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DateCreated] as datetime) [DATECREATED],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_ProducerProject_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ProducerProject__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ProducerProject__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ProducerProject__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ProducerProject__dbt_tmp_temp_view"
    end


