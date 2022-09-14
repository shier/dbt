{{ config(materialized='table',schema='stg')}}
select * FROM [stg].[Auct_Phone_Merge] where CustomerAccountID is not null and EffectiveStartDate is not null and EffectiveEndDate is not null