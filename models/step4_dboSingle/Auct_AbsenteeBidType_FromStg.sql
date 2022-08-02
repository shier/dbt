{{ config(materialized='table',schema='dbo')}}
Select
	cast([AbsenteeBidTypeID] as int) [AbSenteebIDTypeid],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_AbsenteeBidType_FinalView]