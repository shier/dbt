{% snapshot Auct_MyTable_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MyTableID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MyTable_InterView]
{% endsnapshot %}