
Select
	foreignUserId ForeignUserID,
	localUserId LocalUserID,
	cast(importedUsername as nvarchar(4000)) ImportedUserName
From AH_ImportedUserMap_Raw