drop table COVID19_Hospital_Data_Coverage_Detail_cleansed

create table COVID19_Hospital_Data_Coverage_Detail_cleansed (
	
	state VARCHAR (2),
	facility_name VARCHAR (50),
	street_address VARCHAR (50), 
	city VARCHAR (50), 
	zip_code VARCHAR (50), 
	week_ending date,
	certified_bed_count Integer,
	total_beds Integer,
	all_adult_hospital_beds Integer,
	inpatient_beds integer, 
	all_adult_hospital_inpatient_beds integer,
	inpatient_beds_used integer,
	all_adult_hospital_inpatient_bed_occupied integer,
	total_icu_beds integer,
	icu_beds_used integer,
	total_adult_patients_hospitalized_confirmed_and_suspected_covid integer,
	total_adult_patients_hospitalized_confirmed_covid integer,
	total_pediatric_patients_hospitalized_confirmed_covid integer,
	staffed_icu_adult_patients_confirmed_and_suspected_covid integer,
	staffed_icu_adult_patients_confirmed_covid integer,
	deaths_covid integer 

);

select * from COVID19_Hospital_Data_Coverage_Detail_cleansed;