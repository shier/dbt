create view "stg"."Auct_BidderImportFromAdobe_temp_FinalView__dbt_tmp" as
    
Select
	[Created_Date],[Agreement_Status],[Recipient_1_Name],[Recipient_1_Email],[Recipient_1_Role] 
From [Auct_BidderImportFromAdobe_temp_Incr]
