
  
  if object_id ('"stg"."Auct_Automobilia_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Automobilia_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Automobilia_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Automobilia_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Automobilia_Inter__dbt_tmp_temp_view as
    
Select
	[AUTOMOBILIAID] [AutomobiliaID],
	[LOTNUMBER] [LotNumber],
	[AUTOMOBILIATYPEID] [AutomobiliaTypeID],
	[AUTOMOBILIACONDITIONID] [AutomobiliaConditionID],
	[ITEMID] [ItemID],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[AUCTIONID] [AuctionID],
	cast([COMMENTS] as nvarchar(4000)) [Comments]
From stg.[Auct_Automobilia_Raw]
    ');

  CREATE TABLE "stg"."Auct_Automobilia_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Automobilia_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Automobilia_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Automobilia_Inter__dbt_tmp_temp_view"
    end


