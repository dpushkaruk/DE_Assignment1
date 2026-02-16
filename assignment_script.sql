create table business_raw_data as
select * from read_json_auto("C:\Users\dpush\Downloads\yelp_academic_dataset_business.json\yelp_academic_dataset_business.json")

create view unnested as
select
    name,
    city,
    unnest(string_split(categories, ', ')) as category,
    replace(replace(attributes.Alcohol, 'u''', ''), '''', '') as alcohol_service
from business_raw_data
where attributes.Alcohol is not null;

--Here we calculate the nightclubs per city and rank them into top 5.
select city, count(*) as nightclubs, rank() over (order by count(*) desc) as ranked_by_amount_of_clubs
from unnested
where category like '%Nightlife%'
group by city
order by ranked_by_amount_of_clubs
limit 5;
--Phila, New Orleans, Nashville, Tampa and Indianapolis are the top 5 cities with the most nightclubs.

-- Here we calculate the percentage of sober businesses per city, rank them by the most sober, and filter for cities with more than 1000 businesses.
with sober_city as(
    select city, count(*) as total_businesses, count(case when alcohol_service == 'none' then 1 end) as sober_businesses
    from unnested
    group by city
)
select city, (sober_businesses * 100.0 / total_businesses) as sober_percentage, rank() over (order by sober_percentage desc) as ranked_by_sobriety
from sober_city
where total_businesses > 1000
order by ranked_by_sobriety
--Cherry Hill is the city with the highest percentage of sober businesses, while Santa Barbara is the least sober city.




