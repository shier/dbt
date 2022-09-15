
  
  if object_id ('"dbo"."Auct_Automobilia_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Automobilia_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Automobilia_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Automobilia_DM__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Automobilia_DM__dbt_tmp_temp_view as
    
SELECT
	[Item_Skey],
	[AutomobiliaID],
	[AutomobiliaTypeID],
	[AutomobiliaConditionID],
	[ItemID],
	[ItemType],
	[ItemDescription],
	-- [Description],
	[Created],
	[UpdateEventID],
	[Lotnumber],
	[CustomerAccountID],
	[AuctionID],
	[Comments]
FROM [stg].[Auct_Automobilia_DM_stg];
    ');

  CREATE TABLE "dbo"."Auct_Automobilia_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Automobilia_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Automobilia_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Automobilia_DM__dbt_tmp_temp_view"
    end


