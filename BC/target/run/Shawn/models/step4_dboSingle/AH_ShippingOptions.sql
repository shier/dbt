
  
  if object_id ('"dbo"."AH_ShippingOptions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ShippingOptions__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ShippingOptions__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ShippingOptions__dbt_tmp"
    end


   EXEC('create view dbo.AH_ShippingOptions__dbt_tmp_temp_view as
    
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([ShippingMethodID] as int) [ShippingMethodId],
	cast([ListingID] as int) [ListingId],
	cast([FirstItEMAmount] as decimal(24,2)) [FirstItemAmount],
	cast([AdditionalItEMAmount] as decimal(24,2)) [AdditionalItemAmount] 
From stg.[AH_ShippingOptions_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ShippingOptions__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ShippingOptions__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ShippingOptions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ShippingOptions__dbt_tmp_temp_view"
    end


