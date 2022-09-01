
  
  if object_id ('"dbo"."Auct_ReviewStatus__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReviewStatus__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ReviewStatus__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ReviewStatus__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ReviewStatus__dbt_tmp_temp_view as
    
Select
	cast([ReviewStatusID] as int) [ReviewStatusID],
	cast([Name] as nvarchar(512)) [ReviewStatus] 
From stg.[Auct_ReviewStatus_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ReviewStatus__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ReviewStatus__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ReviewStatus__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReviewStatus__dbt_tmp_temp_view"
    end


