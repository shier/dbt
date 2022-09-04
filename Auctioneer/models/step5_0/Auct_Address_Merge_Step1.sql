{{ config(materialized='table',schema='stg',unique_key='AddressID')}}

select  
    Created,AddressID 
from stg.[Auct_Address_FinalView] where Created is not NULL
