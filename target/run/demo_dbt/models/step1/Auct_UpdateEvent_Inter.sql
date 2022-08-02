
  
  if object_id ('"stg"."Auct_UpdateEvent_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UpdateEvent_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_UpdateEvent_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_UpdateEvent_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_UpdateEvent_Inter__dbt_tmp_temp_view as
    
Select
	[UPDATEEVENTID] [UpdateEventID],
	[USERSID] [UsersID],
	[TABLEID] [TableID],
	cast([ORIGINALDATA] as nvarchar(4000)) [OriginalData],
	[ACTIONTIME] [ActionTime],
	[CONTACTID] [ContactID],
	[AUCTIONID] [AuctionID],
	[ADDRESSTYPEID] [AddressTypeID],
	[ADDRESSID] [AddressID],
	cast([ADDRESS1] as nvarchar(4000)) [Address1],
	cast([ADDRESS2] as nvarchar(4000)) [Address2],
	cast([CITY] as nvarchar(4000)) [City],
	cast([STATEPROVINCE] as nvarchar(4000)) [StateProvince],
	cast([POSTALCODE] as nvarchar(4000)) [PostalCode],
	[COUNTRY] [Country],
	cast([CAREOF] as nvarchar(4000)) [Careof],
	[DEALERID] [DealerID],
	cast([DEALERNUMBER] as nvarchar(4000)) [DealerNumber],
	cast([DEALERSTATE] as nvarchar(4000)) [DealerState],
	cast([TAXIDNUMBER] as nvarchar(4000)) [TaxIDNumber],
	cast([TAXIDSTAGE] as nvarchar(4000)) [TaxIDsTage],
	cast([DEALERCOMMENT] as nvarchar(4000)) [DealerComment],
	[ADDRESSSTATID] [AddressstatID],
	[DEALERSTATID] [DealerstatID],
	[DEALERNUMEXPIRE] [DealernumExpire],
	[DEALERTAXEXPIRE] [DeAlerTaxExpire]
From stg.[Auct_UpdateEvent_Raw]
    ');

  CREATE TABLE "stg"."Auct_UpdateEvent_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_UpdateEvent_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_UpdateEvent_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UpdateEvent_Inter__dbt_tmp_temp_view"
    end


