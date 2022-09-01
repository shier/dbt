{% snapshot Auct_ConsignmentNotifyBits_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConsignmentNotifyBit',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConsignmentNotifyBits_InterView]
{% endsnapshot %}