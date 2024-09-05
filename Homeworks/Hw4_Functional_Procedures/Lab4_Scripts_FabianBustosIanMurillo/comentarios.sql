COMMENT ON TABLE University
IS
'Stores information about each university registered';
COMMENT ON COLUMN university.id_university
IS
'Primary key for University table';
COMMENT ON COLUMN university.university_name
IS
'University name';
----------------------------------------------------------
COMMENT ON TABLE Campus
IS
'Stores information about the diferent campus of a university';

COMMENT ON COLUMN campus.id_campus
IS
'Primary key for Campus table';
COMMENT ON COLUMN campus.campus_name
IS
'Campus name';
COMMENT ON COLUMN campus.id_university
IS
'Foreign Key, refers to Id in table University';
-------------------------------------------------------------------
COMMENT ON TABLE Career
IS
'Stores information about the careers offered in different campuses';

COMMENT ON COLUMN career.id_career
IS 
'Primary key for Career table';
COMMENT ON COLUMN career.career_name
IS
'Careers name';
COMMENT ON COLUMN career.id_campus
IS
'Foreign Key, references id in table campus';
----------------------------------------------------------------------------
COMMENT ON TABLE Student
IS
'Stores information of the students studying each career';

COMMENT ON COLUMN Student.id_student
IS
'Primary key for student table';
COMMENT ON COLUMN student.first_name
IS
'Student first name';
COMMENT ON COLUMN student.second_name
IS
'Student second name';
COMMENT ON COLUMN student.first_surname
IS
'Student first surname';
COMMENT ON COLUMN student.second_surname
IS
'Student second surname';
COMMENT ON COLUMN student.student_id
IS
'Student´s university id';
COMMENT ON COLUMN student.email
IS
'Student´s email';
COMMENT ON COLUMN student.id_career
IS
'Foreign key,references id in table career';