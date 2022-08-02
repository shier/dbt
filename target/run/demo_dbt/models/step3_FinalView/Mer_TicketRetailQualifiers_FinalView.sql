create view "stg"."Mer_TicketRetailQualifiers_FinalView__dbt_tmp" as
    
Select
	[ID],[Ticket_Source_ID],[Qualifiers_Name],[Qualifiers_Description] 
From stg.[Mer_TicketRetailQualifiers_Incr] 
Where [dbt_valid_to] is null
