WITH Unija_Bicikala as 
(select * from bike_share_yr_0
union
select * from bike_share_yr_1)

select

dteday, season, ub.yr, weekday, hr, rider_type, riders, price, COGS, 
(riders*price) as revenue,
(riders*price)-COGS as profit

from Unija_Bicikala ub
left join cost_table ct
on 
ub.yr = ct.yr;