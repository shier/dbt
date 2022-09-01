{% snapshot Auct_ProducerProject_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ProducerProjectID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ProducerProject_InterView]
{% endsnapshot %}