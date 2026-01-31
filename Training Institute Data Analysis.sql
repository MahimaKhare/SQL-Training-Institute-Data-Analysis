Use institute;

--- Basic SELECT
--- 1. Display all student records from the Students table.
	   Select * from Students;
       
--- 2. Show only name and course of all students.
       Select name, course from Students;
       
--- 3. List all students enrolled in Full Stack Development.
	   Select * from Students
       Where course = "Full Stack Development";
       
--- 4. Find students who belong to Digital Marketing course
	   Select * from Students
       Where course = "Digital Marketing";
       
       
--- WHERE Clause
--- 5. Display students whose fees are greater than 30,000.
       Select * from Students
	   Where fees > 30000;
       
--- 6. Show students who are older than 20 years.
       Select * from Students
       Where age > 20;
       
--- 7. Find students from the city Jaipur.
       Select * from Students
       Where city = "Jaipur";
       
--- 8. List students enrolled in Graphics Design and from Delhi.       
       Select * from Students
       Where course = "Graphics Design" and city = "Delhi";


--- ORDER BY
--- 9. Display all students ordered by fees (highest to lowest).
	   Select * From Students
       order by fees Desc;
       
--- 10. Show student names ordered alphabetically
		Select name from Students
        order by name;
       
       
--- COUNT, SUM, AVG
--- 11. Count total number of students in the institute.
	    Select count(*) From Students;
        
--- 12. Count how many students are enrolled in RKCL.
		Select count(*) From Students
        where course = "RKCL";
        
--- 13. Find the average fees of all students.
        Select avg(fees) from Students;
        
--- 14. Calculate the total fees collected from Full Stack students   
	    Select sum(fees) from Students
        where course = "Full Stack Development";  
        
        
--- GROUP BY
--- 15. Show total number of students course-wise.
        Select count(name),course from students
        Group by course;
        
--- 16. Display average fees for each course.
        Select avg(fees),course from students
        Group by course;   
     
     
--- Logical Conditions
--- 17. Find students whose fees are between 20,000 and 40,000.
        Select * from Students
        Where fees between 20000 and 40000;
        
--- 18. Display students who are not from Jaipur.
        Select * from Students
        Where not city = "Jaipur";        
      
      
--- Date & Practical Use
--- 19. Show students who enrolled after 1st January 2025.
        Select * from students 
        where enrollment_date > 2025-01-01;
        
--- 20. Display the top 5 students with highest fees paid.    
		Select * from students
        Order by fees Desc
        limit 5
        