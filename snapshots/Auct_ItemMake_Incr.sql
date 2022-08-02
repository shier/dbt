{% snapshot Auct_ItemMake_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ItemMakeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ItemMake_InterView]
{% endsnapshot %}