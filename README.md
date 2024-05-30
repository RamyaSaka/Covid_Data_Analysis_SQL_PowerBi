# Covid_Data_Analysis_SQL_PowerBi

In this project we are analyzing COVID data and generating few insights.

### Tools used
- Database used - MySQL
- Visualization tool - Microsoft powerBi

### Analysis & Findings

**1. Obtain total confirmed case, active cases, recovered cases and deaths**

```
select 
sum(active) as active_cases,
sum(Confirmed) as confirmed_cases,
sum(Recovered) as recovered_cases,
sum(Deaths) as total_deaths
from covid_19;
```

Output - 

![image](https://github.com/RamyaSaka/Covid_Data_Analysis_SQL_PowerBi/assets/121084757/387ccaf6-43b0-4578-aa02-17a326dc8c8c)


**2. Obtain the top 10 countries having the highest covid cases**

```
select sum(confirmed) as confirmed_cases, country 
from covid_19
group by country 
order by confirmed_cases desc
limit 10;
```

Output - 

![image](https://github.com/RamyaSaka/Covid_Data_Analysis_SQL_PowerBi/assets/121084757/2e893ef7-e28f-47b2-9693-db470a17fba8)

![image](https://github.com/RamyaSaka/Covid_Data_Analysis_SQL_PowerBi/assets/121084757/ab9050a5-ee1a-4522-9e65-ed362940ffe3)


**3. Obtaini total no of active cases per country**

```
select sum(active) as active_cases, country 
from covid_19
group by country;
```

Output - 

![image](https://github.com/RamyaSaka/Covid_Data_Analysis_SQL_PowerBi/assets/121084757/6efc9c0e-0817-4d41-87f5-d7c0422577de)

![image](https://github.com/RamyaSaka/Covid_Data_Analysis_SQL_PowerBi/assets/121084757/4428ccd0-1ac1-4d32-8082-cf64c670b7ff)

**4. Obtaining total cases and recovered cases of American region.**

```
select sum(confirmed) as total_cases,
sum(recovered) as recovered_cases,
country  from covid_19 
where region like 'Americas'
group by country 
order by recovered_cases desc
limit 10;
```

Output - 

![image](https://github.com/RamyaSaka/Covid_Data_Analysis_SQL_PowerBi/assets/121084757/76b8f6f6-59b4-4a3c-950f-bc5e9f3e99ae)

![image](https://github.com/RamyaSaka/Covid_Data_Analysis_SQL_PowerBi/assets/121084757/48ace938-85cf-4e79-86b3-c2e894d84731)

**5. Obtaining the death percentage per region**

```
select (sum(deaths)/sum(confirmed))*100 as death_percentage, region
from covid_19
group by region;
```

Output - 

![image](https://github.com/RamyaSaka/Covid_Data_Analysis_SQL_PowerBi/assets/121084757/084df4ae-64bf-4d3a-9424-939f182842cd)

![image](https://github.com/RamyaSaka/Covid_Data_Analysis_SQL_PowerBi/assets/121084757/67ec9255-8db9-4ce3-b797-70e5db10266d)


### Visualization 

![image](https://github.com/RamyaSaka/Covid_Data_Analysis_SQL_PowerBi/assets/121084757/37bb0baa-1496-4f4d-9790-0537eda5d521)










