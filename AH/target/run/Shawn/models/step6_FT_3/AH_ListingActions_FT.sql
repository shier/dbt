
  
  if object_id ('"dbo_dbo"."AH_ListingActions_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_ListingActions_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_dbo"."AH_ListingActions_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo_dbo"."AH_ListingActions_FT__dbt_tmp"
    end


   EXEC('create view dbo_dbo.AH_ListingActions_FT__dbt_tmp_temp_view as
    
with updateData as (
    select 
        FTstg.[ListingActionID],
		FTtmp.[Buyer_Skey],
		FTstg.[ListingID],
		FTstg.[ActionDTTM],
		FTstg.[Description],
		FTstg.[LastUpdatedUser],
		FTstg.[Amount],
		FTstg.[ProxyAmount],
		FTstg.[QTY],
		FTstg.[Reason],
		FTstg.[Status],
		FTstg.[HasUserEntered],
		FTstg.[CreatedDate],
		FTstg.[UpdatedDate],
		FTstg.[DeletedDate]
    from stg.AH_ListingActions_FT_tmp as FTtmp 
    join stg.AH_ListingActions_FT_stg as FTstg 
    on FTstg.ListingActionID=FTtmp.ListingActionID
)
,
insertData as (
    select 
       	[ListingActionID],
        [Buyer_Skey],
        [ListingID],
        [ActionDTTM],
        [Description],
        [LastUpdatedUser],
        [Amount],
        [ProxyAmount],
        [QTY],
        [Reason],
        [Status],
        [HasUserEntered],
        [CreatedDate],
        [UpdatedDate],
        [DeletedDate]
    from stg.AH_ListingActions_FT_tmp
    where ListingActionID not in (select  ListingActionID from stg.AH_ListingActions_FT_stg)
)
SELECT
	[ListingActionID],
	[Buyer_Skey],
	[ListingID],
	[ActionDTTM],
	[Description],
	[LastUpdatedUser],
	[Amount],
	[ProxyAmount],
	[QTY],
	[Reason],
	[Status],
	[HasUserEntered],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from updateData

union all

SELECT
	[ListingActionID],
	[Buyer_Skey],
	[ListingID],
	[ActionDTTM],
	[Description],
	[LastUpdatedUser],
	[Amount],
	[ProxyAmount],
	[QTY],
	[Reason],
	[Status],
	[HasUserEntered],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from insertData
    ');

  CREATE TABLE "dbo_dbo"."AH_ListingActions_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_dbo.AH_ListingActions_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_dbo"."AH_ListingActions_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_ListingActions_FT__dbt_tmp_temp_view"
    end


