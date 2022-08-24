{% snapshot Auct_BannerType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BannerTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BannerType_InterView]
{% endsnapshot %}