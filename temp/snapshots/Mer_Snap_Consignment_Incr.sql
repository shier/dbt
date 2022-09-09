{% snapshot Mer_Snap_Consignment_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConsignmentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_Snap_Consignment_InterView]
{% endsnapshot %}