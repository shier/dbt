
Select
	cast([ItemMakeID] as int) [ITEMMAKEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([ItemTaxTypeID] as int) [ITEMTAXTYPEID] 
From stg.[Auct_ItemMake_FinalView]