{% snapshot Auct_SiteType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SiteTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SiteType_InterView]
{% endsnapshot %}