{% snapshot Auct_SubordinateContact_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SubordinateContactID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SubordinateContact_InterView]
{% endsnapshot %}