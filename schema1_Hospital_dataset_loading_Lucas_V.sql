drop table COVID19_Hospital_Data_Coverage_Detail_cleansed

create table COVID19_Hospital_Data_Coverage_Detail_cleansed (
	
	state VARCHAR (2),
	facility_name VARCHAR (50),
	street_address VARCHAR (50), 
	city VARCHAR (50), 
	zip_code VARCHAR (50), 
	week_ending date,
	certified_bed_count float,
	total_beds float,
	all_adult_hospital_beds float,
	inpatient_beds float, 
	all_adult_hospital_inpatient_beds float,
	inpatient_beds_used float,
	all_adult_hospital_inpatient_bed_occupied float,
	total_icu_beds float,
	icu_beds_used float,
	total_adult_patients_hospitalized_confirmed_and_suspected_covid float,
	total_adult_patients_hospitalized_confirmed_covid float,
	total_pediatric_patients_hospitalized_confirmed_covid float,
	staffed_icu_adult_patients_confirmed_and_suspected_covid float,
	staffed_icu_adult_patients_confirmed_covid float,
	deaths_covid float 

);

select * from COVID19_Hospital_Data_Coverage_Detail_cleansed;

create table COVID19_Hospital_Data_Coverage_Detail_cleansed1 as (select state, sum(total_adult_patients_hospitalized_confirmed_and_suspected_covid ) as total_adult_hospitalized_confirmed_and_suspected_covid ,   sum(total_adult_patients_hospitalized_confirmed_covid) as total_adults_hospitalized_with_covid, sum(deaths_covid) as total_deaths
from COVID19_Hospital_Data_Coverage_Detail_cleansed
Group by state
order by state)
;


select * from COVID19_Hospital_Data_Coverage_Detail_cleansed1 



