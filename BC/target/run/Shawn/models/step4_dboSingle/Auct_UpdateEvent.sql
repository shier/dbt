
  
  if object_id ('"dbo"."Auct_UpdateEvent__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UpdateEvent__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UpdateEvent__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UpdateEvent__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UpdateEvent__dbt_tmp_temp_view as
    
Select
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([UsersID] as int) [USERSID],
	cast([TableID] as int) [TABLEID],
	cast([OriginalData] as nvarchar(4000)) [ORIGINALDATA],
	cast([ActionTime] as datetime) [ACTIONTIME],
	cast([ContactID] as int) [CONTACTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AddressTypeID] as int) [ADDRESSTYPEID],
	cast([AddressID] as int) [ADDRESSID],
	cast([Address1] as nvarchar(4000)) [ADDRESS1],
	cast([Address2] as nvarchar(4000)) [ADDRESS2],
	cast([City] as nvarchar(4000)) [CITY],
	cast([StateProvince] as nvarchar(4000)) [STATEPROVINCE],
	cast([PostalCode] as nvarchar(4000)) [POSTALCODE],
	cast([Country] as int) [COUNTRY],
	cast([Careof] as nvarchar(4000)) [CAREOF],
	cast([DealerID] as int) [DEALERID],
	cast([DealerNumber] as nvarchar(4000)) [DEALERNUMBER],
	cast([DealerState] as nvarchar(4000)) [DEALERSTATE],
	cast([TaxIDNumber] as nvarchar(4000)) [TAXIDNUMBER],
	cast([TaxIDsTage] as nvarchar(4000)) [TAXIDSTAGE],
	cast([DealerComment] as nvarchar(4000)) [DEALERCOMMENT],
	cast([AddressstatID] as int) [ADDRESSSTATID],
	cast([DealerstatID] as int) [DEALERSTATID],
	cast([DealernumExpire] as datetime) [DEALERNUMEXPIRE],
	cast([DeAlerTaxExpire] as datetime) [DEALERTAXEXPIRE] 
From stg.[Auct_UpdateEvent_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UpdateEvent__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UpdateEvent__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UpdateEvent__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UpdateEvent__dbt_tmp_temp_view"
    end


