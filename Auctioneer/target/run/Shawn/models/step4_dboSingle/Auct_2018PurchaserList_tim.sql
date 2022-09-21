
  
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
	cast([Email] as nvarchar(4000)) [email],
	cast([Phone] as nvarchar(4000)) [phone],
	cast([Address] as nvarchar(4000)) [address],
	cast([Address2] as nvarchar(4000)) [address2],
	cast([City] as nvarchar(4000)) [city],
	cast([State] as nvarchar(4000)) [state],
	cast([ZipCode] as nvarchar(4000)) [zipcode],
	cast([Country] as nvarchar(4000)) [country],
	cast([Optin] as nvarchar(4000)) [OptIn],
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


