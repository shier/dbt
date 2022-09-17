
Select
	cast([ProfileID] as int) [PROFILEID],
	cast([BgColor] as nvarchar(4000)) [BGCOLOR],
	cast([WizardColor] as nvarchar(4000)) [WIZARDCOLOR],
	cast([TextColor] as nvarchar(4000)) [TEXTCOLOR],
	cast([WizardText] as nvarchar(4000)) [WIZARDTEXT],
	cast([BidderPhoto] as nvarchar(4000)) [BIDDERPHOTO],
	cast([UserTimeOut] as nvarchar(4000)) [USERTIMEOUT],
	cast([CustListall] as nvarchar(4000)) [CUSTLISTALL],
	cast([CustsumDisplay] as nvarchar(4000)) [CUSTSUMDISPLAY],
	cast([CustContact] as nvarchar(4000)) [CUSTCONTACT],
	cast([DefaultAuctionID] as int) [DEFAULTAUCTIONID],
	cast([PulseQueueID] as int) [PULSEQUEUEID] 
From stg.[Auct_ProfileData_FinalView]