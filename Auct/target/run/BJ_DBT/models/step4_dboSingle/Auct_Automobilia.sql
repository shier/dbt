
  
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
	cast([AutomobiliaID] as int) [AutomobiliaID],
	cast([LotNumber] as numeric(18,2)) [Lotnumber],
	cast([AutomobiliaTypeID] as int) [AutomobiliaTypeID],
	cast([AutomobiliaConditionID] as int) [AutomobiliaConditionID],
	cast([ItemID] as int) [ItemID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([AuctionID] as int) [AuctionID],
	cast([Comments] as nvarchar(4000)) [Comments] 
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


