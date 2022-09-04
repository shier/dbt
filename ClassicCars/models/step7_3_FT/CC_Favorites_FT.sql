{{ config(materialized='table',schema='dbo')}}

with updateData as (
    select 
		FTstg.[FavoritePK],
		FTstg.[CreatedUTC],
		FTstg.[ModifiedDateUTC],
		FTstg.[IsActive],
		FTstg.[ListingID],
		FTtmp.[Car_Skey],
		FTstg.[UserID],
		FTtmp.[PotentialBuyer_Skey],
		FTstg.[DataTokenID]
    from stg.CC_Favorites_FT_tmp as FTtmp 
    join stg.CC_Favorites_FT_stg as FTstg 
    on FTstg.FavoritePK=FTtmp.FavoritePK
),
insertData as (
    select 
		[FavoritePK], 
		[CreatedUTC], 
		[ModifiedDateUTC], 
		[IsActive], 
		[ListingID], 
		[Car_Skey],  
		[UserID], 
		[PotentialBuyer_Skey], 
		[DataTokenID]
    from stg.CC_Favorites_FT_tmp
    where FavoritePK not in (select  FavoritePK from stg.CC_Favorites_FT_stg)
)
SELECT
  	[FavoritePK], 
	[CreatedUTC], 
	[ModifiedDateUTC], 
	[IsActive], 
	[ListingID], 
    [Car_Skey],  
	[UserID], 
    [PotentialBuyer_Skey], 
	[DataTokenID]
from updateData

union all

SELECT
 	[FavoritePK], 
	[CreatedUTC], 
	[ModifiedDateUTC], 
	[IsActive], 
	[ListingID], 
    [Car_Skey],  
	[UserID], 
    [PotentialBuyer_Skey], 
	[DataTokenID]
from insertData