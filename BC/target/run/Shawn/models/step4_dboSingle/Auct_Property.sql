
  
  if object_id ('"dbo"."Auct_Property__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Property__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Property__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Property__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Property__dbt_tmp_temp_view as
    
Select
	cast([PropertyID] as int) [PROPERTYID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([PropertyTypeKey] as int) [PROPERTYTYPEKEY],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Created] as datetime) [CREATED],
	cast([PropertySpace] as nvarchar(4000)) [PROPERTYSPACE],
	cast([CurrentPropertyTransactionID] as int) [CURRENTPROPERTYTRANSACTIONID],
	cast([GUIDStamp] as nvarchar(4000)) [GUIDSTAMP],
	cast([Active] as nvarchar(4000)) [ACTIVE],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_Property_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Property__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Property__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Property__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Property__dbt_tmp_temp_view"
    end


