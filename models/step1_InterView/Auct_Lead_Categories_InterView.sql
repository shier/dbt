{{ config(materialized='view',schema='stg')}}
Select
	[LEAD_CATEGORY_ID] [Lead_Category_ID],
	[CARTYPEID] [CarTypeID],
	[USERSID] [UsersID],
	[CREATE_DATE] [Create_Date]
From stg.[Auct_Lead_Categories_Raw]
