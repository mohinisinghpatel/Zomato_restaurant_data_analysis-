SELECT * FROM project.main;
alter table main change Datekey_Opening Datekey_opening date;
select countrycode, city, count(*) as restaurant_count from main group by countrycode,city;
select year(Datekey_opening) as year,quarter(Datekey_opening) as quarter, month(Datekey_opening) as month, count(*) as restaurant_count from main 
group by year,quarter,month 
order by year,quarter,month;

select rating, count(*) as Restauarant_count from main group by rating;
select case 
           when Average_cost_for_two <=100 then '0-100'
           when Average_cost_for_two <=250 then '100-250'
           when Average_cost_for_two <=500 then '250-500'
           when Average_cost_for_two <=750 then '500-750'
           when Average_cost_for_two<=1000 then '750-1000'
           else '1000+'
	  end as bucket, count(*) as restauarant_count from main group by bucket  order by bucket ;
   select 
      Has_table_booking ,count(*) as restauarant_count,
	  count(*)/(select count(*) from main)*100 as percentage 
      from main  group by Has_table_booking;
	
select 
     Has_online_delivery ,count(*) as restaurant_count,
     count(*)/(select count(*) from main)*100 as percentage 
     from main group by Has_online_delivery;
      
      
      
      
      