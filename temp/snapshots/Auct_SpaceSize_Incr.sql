{% snapshot Auct_SpaceSize_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SpaceSizeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SpaceSize_InterView]
{% endsnapshot %}