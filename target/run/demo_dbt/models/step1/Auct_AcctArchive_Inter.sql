
  
  if object_id ('"stg"."Auct_AcctArchive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AcctArchive_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AcctArchive_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AcctArchive_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AcctArchive_Inter__dbt_tmp_temp_view as
    
Select
	[ARCHIVEID] [ArchiveID],
	[PAYMENTAMT] [PaymentAMT],
	[LOTNUMBER] [LotNumber],
	[FEEAMOUNT] [FeeAmount],
	[CONTACTID] [ContactID],
	[AUCTIONID] [AuctionID],
	cast([ACCTTYPE] as nvarchar(4000)) [AcctType],
	cast([FEENAME] as nvarchar(4000)) [FeeName],
	cast([PAYMENTTYPE] as nvarchar(4000)) [PaymentType],
	cast([SYSTEMNOTE] as nvarchar(4000)) [SystemNote],
	cast([USERNOTE] as nvarchar(4000)) [UserNote],
	[CREATED] [Created],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	cast([DEPT] as nvarchar(4000)) [Dept],
	[DOCUMENTTYPE] [DocumentType],
	cast([VCONTACTID] as nvarchar(4000)) [VContactID]
From stg.[Auct_AcctArchive_Raw]
    ');

  CREATE TABLE "stg"."Auct_AcctArchive_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AcctArchive_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AcctArchive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AcctArchive_Inter__dbt_tmp_temp_view"
    end


