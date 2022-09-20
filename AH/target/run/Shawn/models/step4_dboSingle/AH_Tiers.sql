
  
  if object_id ('"dbo"."AH_Tiers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Tiers__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Tiers__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Tiers__dbt_tmp"
    end


   EXEC('create view dbo.AH_Tiers__dbt_tmp_temp_view as
    
Select
	cast([Upperboundexclusive] as numeric(26,4)) [UpperBoundExclusive],
	cast([Value] as numeric(19,4)) [Value],
	cast([Lowerboundinclusive] as numeric(19,4)) [LowerBoundInclusive],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([FeescheduleID] as int) [FeeScheduleId],
	cast([ValueType] as nvarchar(4000)) [ValueType],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_Tiers_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Tiers__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Tiers__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Tiers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Tiers__dbt_tmp_temp_view"
    end


