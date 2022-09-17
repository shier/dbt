
Select
	cast([ArtID] as int) [artid],
	cast([ColID] as int) [colid],
	cast([Is_udt] as bit) [is_udt],
	cast([Is_xml] as bit) [is_xml],
	cast([Is_Max] as bit) [is_max] 
From stg.[Auct_SysArticleColumns_FinalView]