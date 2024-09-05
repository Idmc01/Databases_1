ALTER TABLE career
ADD
CONSTRAINT FK_CAMPUS_CAREER FOREIGN KEY (id_campus) REFERENCES campus(id_campus);

ALTER TABLE campus
ADD
CONSTRAINT FK_UNIVERSITY_CAMPUS FOREIGN KEY (id_university) REFERENCES university(id_university)

ALTER TABLE student
ADD
CONSTRAINT fk_career_student FOREIGN KEY (id_career) REFERENCES career(id_career)
