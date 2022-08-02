{% snapshot Auct_SysArticleColumns_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ArtID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SysArticleColumns_InterView]
{% endsnapshot %}