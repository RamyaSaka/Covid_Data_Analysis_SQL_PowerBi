-- Finding total no of rows from table
select count(*) from covid.covid_19;

-- Data overview
select * from covid_19 limit 5;

-- Renaming column names for simplicity
ALTER TABLE covid_19 RENAME COLUMN `Province/State` to state;
ALTER TABLE covid_19 RENAME COLUMN `Country/Region` to country;
ALTER TABLE covid_19 RENAME COLUMN `WHO Region` to region;

-- Obtaining distinct regions present
select distinct region from covid_19;

-- Obtaining total confirmed case, active cases, recovered cases and deaths
select 
sum(active) as active_cases,
sum(Confirmed) as confirmed_cases,
sum(Recovered) as recovered_cases,
sum(Deaths) as total_deaths
from covid_19;

-- Obtaining the top 10 countries having the highest covid cases
select sum(confirmed) as confirmed_cases, country 
from covid_19
group by country 
order by confirmed_cases desc
limit 10;

-- Obtaining total no of active cases per country
select sum(active) as active_cases, country 
from covid_19
group by country;

-- Obtaining total cases and recovered cases of American region.
select sum(confirmed) as total_cases,
sum(recovered) as recovered_cases,
country  from covid_19 
where region like 'Americas'
group by country 
order by recovered_cases desc
limit 10;

-- Obtaining the death percentage per region
select (sum(deaths)/sum(confirmed))*100 as death_percentage, region
from covid_19
group by region;
