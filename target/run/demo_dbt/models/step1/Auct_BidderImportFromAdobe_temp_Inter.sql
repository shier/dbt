
  
  if object_id ('"stg"."Auct_BidderImportFromAdobe_temp_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderImportFromAdobe_temp_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderImportFromAdobe_temp_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderImportFromAdobe_temp_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderImportFromAdobe_temp_Inter__dbt_tmp_temp_view as
    
Select
	[Created_Date] [Created_Date],
	cast([Agreement_Status] as nvarchar(4000)) [Agreement_Status],
	cast([Recipient_1_Name] as nvarchar(4000)) [Recipient_1_Name],
	cast([Recipient_1_Email] as nvarchar(4000)) [Recipient_1_Email],
	cast([Recipient_1_Role] as nvarchar(4000)) [Recipient_1_Role]
From stg.[Auct_BidderImportFromAdobe_temp_Raw]
    ');

  CREATE TABLE "stg"."Auct_BidderImportFromAdobe_temp_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderImportFromAdobe_temp_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderImportFromAdobe_temp_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderImportFromAdobe_temp_Inter__dbt_tmp_temp_view"
    end


