
Select
	Id ID,
	DisplayOrder DisplayOrder,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	UseHTMLEditor Usehtmleditor,
	UserDefined Userdefined,
	cast(Name as nvarchar(4000)) Name,
	cast(Culture as nvarchar(4000)) Culture,
	cast(PageTitle as nvarchar(4000)) PageTitle,
	cast(Text as nvarchar(4000)) Text
From AH_Contents_Raw