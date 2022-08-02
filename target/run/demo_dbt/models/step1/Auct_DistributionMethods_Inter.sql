
  
  if object_id ('"stg"."Auct_DistributionMethods_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DistributionMethods_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DistributionMethods_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_DistributionMethods_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_DistributionMethods_Inter__dbt_tmp_temp_view as
    
Select
	[DISTRIBUTIONMETHODID] [DistributionMethodID],
	[ISACTIVE] [IsActive],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([FULLYQUALIFIEDCLASSNAME] as nvarchar(4000)) [FullyQualifiedClassName]
From stg.[Auct_DistributionMethods_Raw]
    ');

  CREATE TABLE "stg"."Auct_DistributionMethods_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DistributionMethods_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_DistributionMethods_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DistributionMethods_Inter__dbt_tmp_temp_view"
    end


