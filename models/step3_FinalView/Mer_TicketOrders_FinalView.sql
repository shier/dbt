{{ config(materialized='view',schema='stg')}}
Select
	[OrderID],[Event_Name],[ShippingMethod],[Phone],[Address],[Address2],[City],[State],[Country],[Ticket_Type],[Ticket_Seq_ID],[Retail_Mask],[Retail_Qualifiers],[Company],[Email],[Price_Code_Desc],[Comp_Name],[Sell_Location_Name],[PaID],[Ticket_Status],[Status],[Season_Name],[Manifest_Name],[Event_Name_Long],[FullName],[Zip],[Price_Code],[Full_Price],[Purchase_Price],[Inet_Purchase_Price],[Printed_Price],[Pc_Ticket],[Pc_Tax],[Block_full_Price],[Block_Purchase_Price],[Paid_Amount],[Season_ID],[Event_ID],[Acct_ID],[Sell_Location_ID],[Num_Seats],[Comp_Code],[SourceID],[Event_Date],[Upd_DateTime],[Privacy_Opt_Out_upd_DateTime] 
From stg.[Mer_TicketOrders_Incr] 
Where [dbt_valid_to] is null