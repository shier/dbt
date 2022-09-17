{{ config(materialized='table',schema='dbo')}}
Select
	cast([BlockCommunicationID] as int) [BLOCKCOMMUNICATIONID],
	cast([XmlText] as nvarchar(4000)) [XMLTEXT] 
From stg.[Auct_BlockCommunication_FinalView]