with 

source as (
    select * from {{ source('TPCH_SF1', 'part') }}
),

cleaned as (
    select
        p_partkey as part_id,
        p_name as name,
        p_mfgr as manufacturer,
        p_brand as brand,
        p_type as type,
        p_size as size,
        p_container as container,
        p_retailprice as retail_price,
        p_comment as comment,

        case 
            when p_type like '%BRASS'
            then 'brass'
            else p_type
        end as material
    from source
)

select * from cleaned