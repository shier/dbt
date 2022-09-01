{% snapshot Auct_ItemStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ItemStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ItemStatus_InterView]
{% endsnapshot %}