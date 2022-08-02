{% snapshot Auct_MediaPosition_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MediaPositionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaPosition_InterView]
{% endsnapshot %}