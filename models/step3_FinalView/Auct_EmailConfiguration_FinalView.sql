{{ config(materialized='view',schema='stg')}}
Select
	[Host],[Domain],[UserName],[Password] 
From [Auct_EmailConfiguration_Incr]