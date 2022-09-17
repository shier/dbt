
Select
	cast([Lead_Category_ID] as int) [LEAD_CATEGORY_ID],
	cast([CarTypeID] as int) [CARTYPEID],
	cast([UsersID] as int) [USERSID],
	cast([Create_Date] as datetime) [CREATE_DATE] 
From stg.[Auct_Lead_Categories_FinalView]