create view "dbo_stg"."Auct_Lead_Categories_InterView__dbt_tmp" as
    
Select
	[LEAD_CATEGORY_ID] [Lead_Category_ID],
	[CARTYPEID] [CarTypeID],
	[USERSID] [UsersID],
	[CREATE_DATE] [Create_Date]
From stg.[Auct_Lead_Categories_Raw]
