
  
  if object_id ('"dbo"."Auct_2018PurchaserList_tim__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_2018PurchaserList_tim__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_2018PurchaserList_tim__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_2018PurchaserList_tim__dbt_tmp"
    end


   EXEC('create view dbo.Auct_2018PurchaserList_tim__dbt_tmp_temp_view as
    
Select
	cast([First_Name] as nvarchar(4000)) [First_Name],
	cast([Last_Name] as nvarchar(4000)) [Last_Name],
	cast([Email] as nvarchar(4000)) [Email],
	cast([Phone] as nvarchar(4000)) [Phone],
	cast([Address] as nvarchar(4000)) [Address],
	cast([Address2] as nvarchar(4000)) [Address2],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	cast([Country] as nvarchar(4000)) [Country],
	cast([Optin] as nvarchar(4000)) [Optin],
	cast([AuctionID] as nvarchar(4000)) [AuctionID],
	cast([Source] as nvarchar(4000)) [Source] 
From stg.[Auct_2018PurchaserList_tim_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_2018PurchaserList_tim__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_2018PurchaserList_tim__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_2018PurchaserList_tim__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_2018PurchaserList_tim__dbt_tmp_temp_view"
    end


