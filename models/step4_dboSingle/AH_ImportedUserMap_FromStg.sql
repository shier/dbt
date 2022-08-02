{{ config(materialized='table',schema='dbo')}}
Select
	cast([LocalUserID] as int) [LocalUserID],
	cast([ForeignUserID] as int) [ForeignUserID],
	cast([ImportedUserName] as nvarchar(4000)) [ImportedUserName] 
From stg.[AH_ImportedUserMap_FinalView]