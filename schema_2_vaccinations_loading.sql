create table us_state_vaccinations_cleansed (
	
	date date,
	location VARCHAR (50),
	state VARCHAR (2),
	total_vaccinations float,
	total_distributed float,
	people_vaccinated float,
	people_fully_vaccinated_per_hundred float, 
	total_vaccinations_per_hundred float,
	people_fully_vaccinated float,
	people_vaccinated_per_hundred float,
	distributed_per_hundred float,
	daily_vaccinations_raw float,
	daily_vaccinations float,
	daily_vaccinations_per_million float,
	share_doses_used float
	
);


create table us_state_vaccinations_cleansed_group as (
select state, sum(total_vaccinations) as total_vaccinations, sum(total_distributed) as total_distributed, sum(people_vaccinated) as people_vaccinated, sum(people_fully_vaccinated) as people_fully_vaccinated, sum(daily_vaccinations) as daily_vaccinations
from us_state_vaccinations_cleansed
group by state
order by state)

select * from us_state_vaccinations_cleansed_group

