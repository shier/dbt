
  
  if object_id ('"dbo"."Auct_AcctArchive__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AcctArchive__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AcctArchive__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AcctArchive__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AcctArchive__dbt_tmp_temp_view as
    
Select
	cast([PaymentAMT] as numeric(19,4)) [PAYMENTAMT],
	cast([LotNumber] as numeric(182)) [LOTNUMBER],
	cast([FeeAmount] as numeric(19,4)) [FEEAMOUNT],
	cast([ArchiveID] as int) [ARCHIVEID],
	cast([ContactID] as int) [CONTACTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AcctType] as nvarchar(4000)) [ACCTTYPE],
	cast([FeeName] as nvarchar(4000)) [FEENAME],
	cast([PaymentType] as nvarchar(4000)) [PAYMENTTYPE],
	cast([SystemNote] as nvarchar(4000)) [SYSTEMNOTE],
	cast([UserNote] as nvarchar(4000)) [USERNOTE],
	cast([Created] as DATETIME) [CREATED],
	cast([UserName] as nvarchar(4000)) [USERNAME],
	cast([Dept] as nvarchar(4000)) [DEPT],
	cast([DocumentType] as int) [DOCUMENTTYPE],
	cast([VContactID] as nvarchar(4000)) [VCONTACTID] 
From stg.[Auct_AcctArchive_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AcctArchive__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AcctArchive__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AcctArchive__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AcctArchive__dbt_tmp_temp_view"
    end


