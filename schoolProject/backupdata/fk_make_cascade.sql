ALTER TABLE lesson DROP CONSTRAINT fk_lesson_classno;

ALTER TABLE lesson
  ADD CONSTRAINT fk_lesson_classno FOREIGN KEY (classno)
      REFERENCES class (no) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE lesson DROP CONSTRAINT fk_lesson_teacherno;

ALTER TABLE lesson
  ADD CONSTRAINT fk_lesson_teacherno FOREIGN KEY (teacherno)
      REFERENCES teacher (no) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE;      

ALTER TABLE student DROP CONSTRAINT fk_student_classno;

ALTER TABLE student
  ADD CONSTRAINT fk_student_classno FOREIGN KEY (classno)
      REFERENCES class (no) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE; 

ALTER TABLE test DROP CONSTRAINT fk_test_lessonno;

ALTER TABLE test
  ADD CONSTRAINT fk_test_lessonno FOREIGN KEY (lessonno)
      REFERENCES lesson (no) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE teststudent DROP CONSTRAINT fk_teststudent_studentno;

ALTER TABLE teststudent
  ADD CONSTRAINT fk_teststudent_studentno FOREIGN KEY (studentno)
      REFERENCES student (no) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE; 

ALTER TABLE teststudent DROP CONSTRAINT fk_teststudent_testno;

ALTER TABLE teststudent
  ADD CONSTRAINT fk_teststudent_testno FOREIGN KEY (testno)
      REFERENCES test (no) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE;
 