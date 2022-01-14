 use world;
 
 #case
 select Code, indepyear,
	case
    when indepyear is null then "no tiene informacion"
    when indepyear > 1950 then "es matoy a 1950"
    else "es menor a 1950"
    end as resultado
 from country;