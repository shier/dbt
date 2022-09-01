{% snapshot Auct_SiteCategory_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SiteCategoryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SiteCategory_InterView]
{% endsnapshot %}