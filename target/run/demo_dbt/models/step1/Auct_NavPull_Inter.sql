
  
  if object_id ('"stg"."Auct_NavPull_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavPull_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavPull_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavPull_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavPull_Inter__dbt_tmp_temp_view as
    
Select
	[ID] [ID],
	[DEBITAMT] [DebitAMT],
	[AMOUNT] [Amount],
	[CREDITAMT] [CreditAMT],
	[POSTINGDATE] [PostingDate],
	[CREATED] [Created],
	cast([CUSTVENDID] as nvarchar(4000)) [CustvEndID],
	cast([DOCNUMBER] as nvarchar(4000)) [DocNumber],
	cast([BANKACCTNO] as nvarchar(4000)) [BankAcctno],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[AUCTIONID] [AuctionID],
	cast([PROJECTCODE] as nvarchar(4000)) [ProjectCode],
	[STATUS] [Status],
	cast([IMPORT] as nvarchar(4000)) [Import],
	cast([HIDDEN] as nvarchar(4000)) [Hidden],
	[ENTRYNUMBER] [EntryNumber]
From stg.[Auct_NavPull_Raw]
    ');

  CREATE TABLE "stg"."Auct_NavPull_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavPull_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavPull_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavPull_Inter__dbt_tmp_temp_view"
    end


