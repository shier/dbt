
  
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
	cast([ID] as int) [ID],
	cast([DebitAMT] as numeric(19,4)) [DebitAMT],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([CreditAMT] as numeric(19,4)) [CreditAMT],
	cast([PostingDate] as datetime) [PostingDate],
	cast([Created] as datetime) [Created],
	cast([CustvEndID] as nvarchar(4000)) [CustvEndID],
	cast([DocNumber] as nvarchar(4000)) [DocNumber],
	cast([BankAcctno] as nvarchar(4000)) [BankAcctno],
	cast([Description] as nvarchar(4000)) [Description],
	cast([AuctionID] as int) [AuctionID],
	cast([ProjectCode] as nvarchar(4000)) [ProjectCode],
	cast([Status] as int) [Status],
	cast([Import] as nvarchar(4000)) [Import],
	cast([Hidden] as nvarchar(4000)) [Hidden],
	cast([EntryNumber] as int) [EntryNumber] 
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


