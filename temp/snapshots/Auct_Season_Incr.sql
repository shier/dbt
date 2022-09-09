{% snapshot Auct_Season_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SeasonID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Season_InterView]
{% endsnapshot %}