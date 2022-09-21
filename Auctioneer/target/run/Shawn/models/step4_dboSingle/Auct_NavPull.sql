
  
  if object_id ('"dbo"."Auct_NavPull__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavPull__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavPull__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavPull__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavPull__dbt_tmp_temp_view as
    
Select
	cast([DebitAMT] as numeric(19,4)) [DEBITAMT],
	cast([Amount] as numeric(19,4)) [AMOUNT],
	cast([CreditAMT] as numeric(19,4)) [CREDITAMT],
	cast([ID] as int) [ID],
	cast([PostingDate] as datetime) [POSTINGDATE],
	cast([Created] as datetime) [CREATED],
	cast([CustvEndID] as nvarchar(4000)) [CUSTVENDID],
	cast([DocNumber] as nvarchar(4000)) [DOCNUMBER],
	cast([BankAcctno] as nvarchar(4000)) [BANKACCTNO],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([AuctionID] as int) [AUCTIONID],
	cast([ProjectCode] as nvarchar(4000)) [PROJECTCODE],
	cast([Status] as int) [STATUS],
	cast([Import] as nvarchar(4000)) [IMPORT],
	cast([Hidden] as nvarchar(4000)) [HIDDEN],
	cast([EntryNumber] as int) [ENTRYNUMBER] 
From stg.[Auct_NavPull_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NavPull__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavPull__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavPull__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavPull__dbt_tmp_temp_view"
    end


