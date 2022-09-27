





    

    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161245,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',16575279,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',2533219,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19310753,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',3723813,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673475,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19367902,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161225,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',14959150,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161205,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673478,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161242,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',1250225,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161202,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161016,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',9895950,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161222,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',3744978,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',21259499,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',21806654,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',14589344,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673487,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',15658044,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161214,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673481,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',13549467,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161732,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',25897193,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161231,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161211,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673484,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',11102056,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161234,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161228,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',10045187,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161208,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161271,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',840228,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161237,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',3760788,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',810052,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',26254668,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161243,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',3737940,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673473,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19353344,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19310748,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19289629,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161217,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161240,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161008,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161735,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161014,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19310751,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19289626,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673490,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',3901735,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',7052946,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161220,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',4507814,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673479,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161203,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',6529375,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',5282840,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161229,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161209,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161223,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',14589345,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',9888915,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673482,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161246,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',2694977,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19360781,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',1250223,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19367903,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',10045185,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161226,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673476,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161206,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161020,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673485,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',3716724,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161235,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161736,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',810050,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',6557150,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161215,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161238,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673488,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',4016506,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',2080452,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161733,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161275,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',25897194,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161232,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161212,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',26431196,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',633102,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161241,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19310752,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673477,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161221,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',21833162,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',840229,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161244,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673474,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161204,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161012,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',2694972,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161224,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161218,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',3752016,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673483,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',13724070,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19338647,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161247,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',1043518,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',1250224,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',23362439,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19367904,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',25897195,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161227,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161207,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',11102055,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',17214902,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673486,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673480,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',7635382,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',3730851,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161230,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161210,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',26431194,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',3708441,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161018,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161216,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161239,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161233,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161734,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19289625,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',673489,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161219,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161213,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',19346144,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',15658043,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161737,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161236,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',810051,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',2545215,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',161010,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',21817611,'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    
    select ''  as customfieldid, '' as value_columnname  where 1=2
