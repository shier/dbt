{% snapshot Auct_PropertyStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PropertyStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PropertyStatus_InterView]
{% endsnapshot %}