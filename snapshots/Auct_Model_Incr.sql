{% snapshot Auct_Model_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ModelID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Model_InterView]
{% endsnapshot %}