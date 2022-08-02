{{ config(materialized='view',schema='stg')}}
Select
	[BlockCommunicationID],[XmlText] 
From stg.[Auct_BlockCommunication_Incr] 
Where [dbt_valid_to] is null