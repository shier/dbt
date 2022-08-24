create view "dbo_stg"."Auct_BlockCommunication_InterView__dbt_tmp" as
    
Select
	[BLOCKCOMMUNICATIONID] [BlockCommunicationID],
	cast([XMLTEXT] as nvarchar(4000)) [XmlText]
From stg.[Auct_BlockCommunication_Raw]
