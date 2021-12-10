select * from covid19_hospital_data_coverage_detail_cleansed1

select* from us_state_vaccinations_cleansed_group

select hos.state,
sum(hos.total_adult_hospitalized_confirmed_and_suspected_covid) as total_adult_hospitalized_confirmed_and_supected_covid,
sum(hos.total_adults_hospitalized_with_covid) as total_adults_hospitalized_with_covid, 
sum(hos.total_deaths) as total_deaths, 
sum(vac.total_vaccinations) as total_vaccinations,
sum(vac.total_distributed) as total_vaccines_distributed,
sum(vac.people_vaccinated) as total_people_vaccinated,
sum(vac.people_fully_vaccinated) as total_people_vaccinated,
sum(vac.daily_vaccinations) as total_daily_vaccinations


from covid19_hospital_data_coverage_detail_cleansed1 as hos
join us_state_vaccinations_cleansed_group as vac ON
hos.state = vac.state 
group by hos.state
order by hos.state
;
