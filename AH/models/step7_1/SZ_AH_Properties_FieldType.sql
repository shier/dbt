{{ config(materialized='table',schema='stg')}}

select 'BoolNativeValue' as column_name, 'bit' as data_type union all
select 'StringNativeValue' as column_name, 'nvarchar(4000)' as data_type union all
select 'IntNativeValue' as column_name, 'int' as data_type union all
select 'DecimalNativeValue' as column_name, 'decimal(10,2)' as data_type union all
select 'DateTimeNativeValue' as column_name, 'datetime' as data_type union all
select 'EnumNativeValue' as column_name, 'nvarchar(200)' as data_type
