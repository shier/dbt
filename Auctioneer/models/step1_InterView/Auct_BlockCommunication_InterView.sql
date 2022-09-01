{{ config(materialized='view',schema='stg')}}
Select
	[BLOCKCOMMUNICATIONID] [BlockCommunicationID],
	cast([XMLTEXT] as nvarchar(4000)) [XmlText]
From stg.[Auct_BlockCommunication_Raw]
