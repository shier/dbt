
  
  if object_id ('"dbo"."Auct_Item_BR__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Item_BR__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Item_BR__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Item_BR__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Item_BR__dbt_tmp_temp_view as
    

WITH Auct_Item_BR_stg AS (
	SELECT 
		[Item_Skey],
		[ItemType],
		[ItemDescription]
	FROM [dbo].[Auct_Car_DM]
	UNION 
	SELECT 
		[Item_Skey],
		[ItemType],
		[ItemDescription]
	FROM [dbo].[Auct_Automobilia_DM]
)

SELECT 
	[Item_Skey],
	[ItemType],
	[ItemDescription]
FROM Auct_Item_BR_stg
    ');

  CREATE TABLE "dbo"."Auct_Item_BR__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Item_BR__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Item_BR__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Item_BR__dbt_tmp_temp_view"
    end


