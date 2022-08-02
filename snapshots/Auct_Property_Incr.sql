{% snapshot Auct_Property_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PropertyID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Property_InterView]
{% endsnapshot %}