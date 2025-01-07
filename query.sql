--1, Tìm ra những student có năm sinh là 2006
select
	*
from
	students
where
	date_part('year',
	birth_date) = 2006;
--2, Liệt kê những student có first_name là Jane
select
	*
from
	students
where
	first_name = 'Jane';
--3, Liệt kê những student có first_name bắt đầu bằng E
select
	*
from
	students
where
	first_name like 'E%';
--4, Đếm xem có bao nhiêu course có số student > 2
select
	count(number_of_students)
from
	(
	select
		c.course_name,
		count(e.student_id) as number_of_students
	from
		courses c
	right join enrollments e on
		c.course_id = e.course_id
	group by 
		c.course_name
	having
		count(e.student_id) > 2
);
--5, thống kê xem mỗi course có bao nhiêu student
select
	c.course_name,
	e.course_id,
	count(e.student_id) as number_of_students
from
	courses c
right join enrollments e on
	c.course_id = e.course_id
group by 
	c.course_name ,
	e.course_id
order by 
	c.course_name asc;
--6, Selecct the first name and last name of students who were born after January 1, 2005.
select
	s.first_name,
	s.last_name
from
	students s
where
	s.birth_date > DATE('01-01-2005');

select
	s.first_name,
	s.last_name
from
	students s
where
	s.birth_date > '01-01-2005';
--7, Count the total number of students enrolled in courses.
select
	count(distinct e.student_id)
from
	enrollments e
where
	e.course_id is not null;
--8, Select all courses with more than 3 credits.
select
	*
from
	courses c
where
	c.credits > 3;
--9, List the names of all courses that include the word 'Science'.
select
	*
from
	courses c
where
	c.course_name like '%Science%';
--10, Rectrieve the names of students along with their enrolled courses.
select
	s.first_name ,
	s.last_name ,
	c.course_id
from
	students s
inner join enrollments e on
	s.student_id = e.student_id
inner join courses c on
	c.course_id = e.course_id ;
--11, Find all students who are enrolled in the course 'Mathematics'.
select
	s.first_name ,
	s.last_name ,
	s.email
from
	students s
inner join enrollments e on
	s.student_id = e.student_id
inner join courses c on
	c.course_id = e.course_id
where
	c.course_name = 'Mathematics';
--12, List all courses along with the number of students enrolled in each course.
-- same as 5
--13, Find the average number of credits for all courses.
	select
	avg(c.course_id)
from
	courses c ;
--14, Retrieve the names of students, sorted by their last name in ascending order.
	select
	s.first_name ,
	s.last_name
from
	students s
order by
	s.last_name asc;
--15, List all students who are not enrolled in any courses.
select
	*
from
	enrollments e
where
	e.course_id is null;
--16, Retrieve the course names and their corresponding credits, sorted by credits in descending order.
	select
	c.course_name ,
	c.credits
from
	courses c
order by
	c.credits desc;
--17, Find the total number of enrollments in the database.
	select
	count(e.enrollment_id)
from
	enrollments e ;
--18, Get the names of students who have enrolled in more than 2 courses.
select
	s.first_name,
	s.last_name ,
	count(e.course_id) as number_of_courses
from
	students s
inner join enrollments e on
	s.student_id = e.student_id
group by
	s.first_name ,
	s.last_name
having
	count(e.course_id) > 2;
--19, List all courses that have no students enrolled.
--20, Retrieve the student details along with their enrollment date for 'Biology' course.
select
	s.student_id ,
	s.first_name ,
	s.last_name ,
	e.enrollment_date
from
	students s
inner join enrollments e on
	s.student_id = e.student_id
inner join courses c on
	c.course_id = e.course_id
where
	c.course_name = 'Biology';
--21, Find the student with the earliest enrollment date.
select
	s.student_id ,
	s.first_name ,
	s.first_name ,
	min(e.enrollment_date)
from
	students s
inner join enrollments e on
	s.student_id = e.student_id
group by 
	s.student_id ,
	s.first_name ,
	s.first_name ,
	e.enrollment_date
order by
	e.enrollment_date asc
limit 1;
--22, Find all students whose last name starts with the letter 'J'.
select
	*
from
	students s
where
	s.last_name like 'J%';
--23, Find the top 5 students with the highest number of enrolled courses.
select 
	s.first_name ,
	s.last_name,
	count(e.enrollment_id) as number_of_enrolled_courses
from
	students s
inner join enrollments e on
	e.student_id = s.student_id
group by
	s.first_name ,
	s.last_name
order by
	count(e.enrollment_id) desc,
	s.first_name asc
limit 5

	
	
	