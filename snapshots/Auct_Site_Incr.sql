{% snapshot Auct_Site_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SiteID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Site_InterView]
{% endsnapshot %}