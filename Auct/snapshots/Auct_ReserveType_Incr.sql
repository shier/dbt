{% snapshot Auct_ReserveType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ReserveTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ReserveType_InterView]
{% endsnapshot %}