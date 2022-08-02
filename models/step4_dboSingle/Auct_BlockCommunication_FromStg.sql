{{ config(materialized='table',schema='dbo')}}
Select
	cast([BlockCommunicationID] as int) [BlockCommunicationID],
	cast([XmlText] as nvarchar(4000)) [XmlText] 
From stg.[Auct_BlockCommunication_FinalView]