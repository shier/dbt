create view "stg"."Auct_BlockCommunication_FinalView__dbt_tmp" as
    
Select
	[BlockCommunicationID],[XmlText] 
From stg.[Auct_BlockCommunication_Incr] 
Where [dbt_valid_to] is null
