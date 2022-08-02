
  
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
	ID ID,
	AUCTIONID AuctionID,
	STATUS Status,
	ENTRYNUMBER EntryNumber,
	AMOUNT Amount,
	CREDITAMT CreditAMT,
	DEBITAMT DebitAMT,
	POSTINGDATE PostingDate,
	CREATED Created,
	cast(HIDDEN as nvarchar(4000)) Hidden,
	cast(CUSTVENDID as nvarchar(4000)) CustvEndID,
	cast(DOCNUMBER as nvarchar(4000)) DocNumber,
	cast(BANKACCTNO as nvarchar(4000)) BankAcctno,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	cast(PROJECTCODE as nvarchar(4000)) ProjectCode,
	cast(IMPORT as nvarchar(4000)) Import
From Auct_NavPull_Raw
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


