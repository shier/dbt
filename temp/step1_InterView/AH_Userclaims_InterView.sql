{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[UserId] [UserID],
	cast([ClaimType] as nvarchar(4000)) [ClaimType],
	cast([ClaimValue] as nvarchar(4000)) [ClaimValue]
From stg.[AH_Userclaims_Raw]
