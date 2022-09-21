
  
  if object_id ('"dbo"."Auct_Automobilia__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Automobilia__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Automobilia__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Automobilia__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Automobilia__dbt_tmp_temp_view as
    
Select
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER],
	cast([AutomobiliaID] as int) [AUTOMOBILIAID],
	cast([AutomobiliaTypeID] as int) [AUTOMOBILIATYPEID],
	cast([AutomobiliaConditionID] as int) [AUTOMOBILIACONDITIONID],
	cast([ItemID] as int) [ITEMID],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Comments] as nvarchar(4000)) [COMMENTS] 
From stg.[Auct_Automobilia_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Automobilia__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Automobilia__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Automobilia__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Automobilia__dbt_tmp_temp_view"
    end


