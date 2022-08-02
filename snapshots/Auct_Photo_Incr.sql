{% snapshot Auct_Photo_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PhotoID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Photo_InterView]
{% endsnapshot %}