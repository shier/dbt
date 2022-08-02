
Select
	FORMID FormID,
	DEPARTMENTID DepartmentID,
	ACTIVE Active,
	cast(FILENAME as nvarchar(4000)) FileName,
	cast(DISPLAYNAME as nvarchar(4000)) DisplayName,
	cast(DESCRIPTION as nvarchar(4000)) Description
From Auct_Forms_Raw