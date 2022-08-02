{% snapshot Auct_Shot_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ShotID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Shot_InterView]
{% endsnapshot %}