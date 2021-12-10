-- drop table COVID19_Hospital_Data_Coverage_Detail_cleansed

create table COVID19_Hospital_Data_Coverage_Detail_cleansed (
	
	state varchar (2),
	facility_name varchar (99),
	street_address varchar (99), 
	city varchar (99), 
	zip_code varchar (99), 
	week_ending date,
	certified_bed_count double precision,
	total_beds double precision,
	all_adult_hospital_beds double precision,
	inpatient_beds double precision, 
	all_adult_hospital_inpatient_beds double precision,
	inpatient_beds_used double precision,
	all_adult_hospital_inpatient_bed_occupied double precision,
	total_icu_beds double precision,
	icu_beds_used double precision,
	total_adult_patients_hospitalized_confirmed_and_suspected_covid double precision,
	total_adult_patients_hospitalized_confirmed_covid double precision,
	total_pediatric_patients_hospitalized_confirmed_covid double precision,
	staffed_icu_adult_patients_confirmed_and_suspected_covid double precision,
	staffed_icu_adult_patients_confirmed_covid double precision,
	deaths_covid double precision 

);

select * from COVID19_Hospital_Data_Coverage_Detail_cleansed

