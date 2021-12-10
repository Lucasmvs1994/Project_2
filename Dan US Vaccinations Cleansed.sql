-- drop table us_state_vaccinations_cleansed

create table us_state_vaccinations_cleansed (
	
	date date,
	location varchar (99),
	state varchar (2),
	total_vaccinations double precision,
	total_distributed double precision,
	people_vaccinated double precision,
	people_fully_vaccinated_per_hundred double precision, 
	total_vaccinations_per_hundred double precision,
	people_fully_vaccinated double precision,
	people_vaccinated_per_hundred double precision,
	distributed_per_hundred double precision,
	daily_vaccinations_raw double precision,
	daily_vaccinations double precision,
	daily_vaccinations_per_million double precision,
	share_doses_used double precision
	
);

select * from us_state_vaccinations_cleansed