{% snapshot Auct_Collection_Consignment_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CollectionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Collection_Consignment_InterView]
{% endsnapshot %}