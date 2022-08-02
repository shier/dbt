{{ config(materialized='table',schema='dbo')}}
Select
	cast([ProfileID] as int) [ProFileID],
	cast([BgColor] as nvarchar(4000)) [BgColor],
	cast([WizardColor] as nvarchar(4000)) [WizardColor],
	cast([TextColor] as nvarchar(4000)) [TextColor],
	cast([WizardText] as nvarchar(4000)) [WizardText],
	cast([BidderPhoto] as nvarchar(4000)) [BidderPhoto],
	cast([UserTimeOut] as nvarchar(4000)) [UserTimeOut],
	cast([CustListall] as nvarchar(4000)) [CustListall],
	cast([CustsumDisplay] as nvarchar(4000)) [CustsumDisplay],
	cast([CustContact] as nvarchar(4000)) [CustContact],
	cast([DefaultAuctionID] as int) [DefaultAuctionID],
	cast([PulseQueueID] as int) [PulseQueueID] 
From stg.[Auct_ProfileData_FinalView]