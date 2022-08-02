{% snapshot Auct_SysschEMAArticles_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ArtID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SysschEMAArticles_InterView]
{% endsnapshot %}