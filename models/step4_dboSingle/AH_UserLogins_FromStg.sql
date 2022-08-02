{{ config(materialized='table',schema='dbo')}}
Select
	cast([LoginprovIDEr] as nvarchar(4000)) [LoginprovIDEr],
	cast([ProvIDErKey] as nvarchar(4000)) [ProvIDErKey],
	cast([UserID] as int) [UserID] 
From stg.[AH_UserLogins_FinalView]