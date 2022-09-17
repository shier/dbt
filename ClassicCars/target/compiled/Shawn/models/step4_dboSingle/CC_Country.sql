
Select
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([CurrencynumCode] as nvarchar(4000)) [CurrencynumCode],
	cast([CountryNameslug] as nvarchar(4000)) [CountryNameslug],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_Country_FinalView]