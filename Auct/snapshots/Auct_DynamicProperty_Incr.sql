{% snapshot Auct_DynamicProperty_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DynamicPropertyID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DynamicProperty_InterView]
{% endsnapshot %}