
  
  if object_id ('"dbo"."AH_ShippingOptions_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ShippingOptions_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ShippingOptions_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ShippingOptions_DM__dbt_tmp"
    end


   EXEC('create view dbo.AH_ShippingOptions_DM__dbt_tmp_temp_view as
    
SELECT
	so.[Id] AS [ShippingOptionID],
	so.[ShippingMethodId] AS [ShippingMethodID],
	sm.[Name] AS [ShippingMethod],
	so.[FirstItemAmount],
	so.[ListingId] AS [ListingID],
	so.[AdditionalItemAmount],
	so.[CreatedOn] AS [CreatedDate],
	so.[UpdatedOn] AS [UpdatedDate],
	so.[DeletedOn] AS [DeletedDate]
From
	[stg].[AH_ShippingOptions_FinalView] AS so
left JOIN [stg].[AH_ShippingMethods_FinalView] AS sm 
on so.ShippingMethodID=sm.ID
    ');

  CREATE TABLE "dbo"."AH_ShippingOptions_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ShippingOptions_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ShippingOptions_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ShippingOptions_DM__dbt_tmp_temp_view"
    end


