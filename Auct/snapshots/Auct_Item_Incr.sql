{% snapshot Auct_Item_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ItemID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Item_InterView]
{% endsnapshot %}