{{ config(materialized='view',schema='stg')}}
Select
	[PROFILEID] [ProfileID],
	cast([BGCOLOR] as nvarchar(4000)) [BgColor],
	cast([WIZARDCOLOR] as nvarchar(4000)) [WizardColor],
	cast([TEXTCOLOR] as nvarchar(4000)) [TextColor],
	cast([WIZARDTEXT] as nvarchar(4000)) [WizardText],
	cast([BIDDERPHOTO] as nvarchar(4000)) [BidderPhoto],
	cast([USERTIMEOUT] as nvarchar(4000)) [UserTimeOut],
	cast([CUSTLISTALL] as nvarchar(4000)) [CustListall],
	cast([CUSTSUMDISPLAY] as nvarchar(4000)) [CustsumDisplay],
	cast([CUSTCONTACT] as nvarchar(4000)) [CustContact],
	[DEFAULTAUCTIONID] [DefaultAuctionID],
	[PULSEQUEUEID] [PulseQueueID]
From stg.[Auct_ProfileData_Raw]
