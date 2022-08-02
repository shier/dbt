{{ config(materialized='table',schema='dbo')}}
Select
	cast([GLInfoID] as int) [GLInfoID],
	cast([AccountID] as int) [AccountID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Task_ItemType] as int) [Task_ItemType],
	cast([Created] as datetime) [Created],
	cast([GlCategoryID] as int) [GlCategoryID],
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([Dept] as int) [Dept],
	cast([Tasks] as nvarchar(4000)) [Tasks],
	cast([Category] as nvarchar(4000)) [Category],
	cast([Deptxx] as nvarchar(4000)) [Deptxx] 
From stg.[Auct_GLInfo_FinalView]