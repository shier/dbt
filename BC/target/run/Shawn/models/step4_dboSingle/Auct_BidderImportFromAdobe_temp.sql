
  
  if object_id ('"dbo"."Auct_BidderImportFromAdobe_temp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderImportFromAdobe_temp__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BidderImportFromAdobe_temp__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BidderImportFromAdobe_temp__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BidderImportFromAdobe_temp__dbt_tmp_temp_view as
    
Select
	cast([Created_Date] as datetime) [Created_Date],
	cast([Agreement_Status] as nvarchar(4000)) [Agreement_Status],
	cast([Recipient_1_Name] as nvarchar(4000)) [Recipient_1_Name],
	cast([Recipient_1_Email] as nvarchar(4000)) [Recipient_1_Email],
	cast([Recipient_1_Role] as nvarchar(4000)) [Recipient_1_Role] 
From stg.[Auct_BidderImportFromAdobe_temp_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BidderImportFromAdobe_temp__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BidderImportFromAdobe_temp__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BidderImportFromAdobe_temp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderImportFromAdobe_temp__dbt_tmp_temp_view"
    end


