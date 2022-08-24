{{ config(materialized='view',schema='stg')}}
Select
	[Created_Date] [Created_Date],
	cast([Agreement_Status] as nvarchar(4000)) [Agreement_Status],
	cast([Recipient_1_Name] as nvarchar(4000)) [Recipient_1_Name],
	cast([Recipient_1_Email] as nvarchar(4000)) [Recipient_1_Email],
	cast([Recipient_1_Role] as nvarchar(4000)) [Recipient_1_Role]
From stg.[Auct_BidderImportFromAdobe_temp_Raw]
