{% snapshot Auct_ItemType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ItemTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ItemType_InterView]
{% endsnapshot %}