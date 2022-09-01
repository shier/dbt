
  
  if object_id ('"dbo"."Auct_DistributionMethods__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DistributionMethods__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DistributionMethods__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DistributionMethods__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DistributionMethods__dbt_tmp_temp_view as
    
Select
	cast([DistributionMethodID] as int) [DistributionMethodID],
	cast([IsActive] as bit) [IsActive],
	cast([Name] as nvarchar(4000)) [Name],
	cast([FullyQualifiedClassName] as nvarchar(4000)) [FullyQualifiedClassName] 
From stg.[Auct_DistributionMethods_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DistributionMethods__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DistributionMethods__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DistributionMethods__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DistributionMethods__dbt_tmp_temp_view"
    end


