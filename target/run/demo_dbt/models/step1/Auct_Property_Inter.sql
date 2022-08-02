
  
  if object_id ('"stg"."Auct_Property_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Property_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Property_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Property_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Property_Inter__dbt_tmp_temp_view as
    
Select
	[PROPERTYID] [PropertyID],
	[CONSIGNMENTID] [ConsignmentID],
	[PROPERTYTYPEKEY] [PropertyTypeKey],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[CREATED] [Created],
	cast([PROPERTYSPACE] as nvarchar(4000)) [PropertySpace],
	[CURRENTPROPERTYTRANSACTIONID] [CurrentPropertyTransactionID],
	cast([GUIDSTAMP] as nvarchar(4000)) [GUIDStamp],
	cast([ACTIVE] as nvarchar(4000)) [Active],
	[AUCTIONID] [AuctionID]
From stg.[Auct_Property_Raw]
    ');

  CREATE TABLE "stg"."Auct_Property_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Property_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Property_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Property_Inter__dbt_tmp_temp_view"
    end


