{% snapshot Auct_MetaDataType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MetaDataTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MetaDataType_InterView]
{% endsnapshot %}