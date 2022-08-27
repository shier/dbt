{{ config(materialized='table',schema='stg',unique_key='AddressID')}}
With idList as (
    select * from stg.Auct_AM_BuildChain_Key
),
nullList as (
    select AddressID from stg.[Auct_Address_FinalView]  where Created is NULL
)

select  nullList.AddressID, (select top 1 idList.Created from idList where AddressID<nullList.[AddressID] order by AddressID desc) as Created
from nullList



