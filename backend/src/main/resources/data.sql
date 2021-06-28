INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Spring Boot', 'https://c.pxhere.com/images/dd/84/a77b9b51d8ddeef9273f86fb53fc-1449495.jpg!d', 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-07-10T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-07-10T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-07-10T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-07-10T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha Html', 'Tralha principal do curso', 1, 'https://c.pxhere.com/images/dd/84/a77b9b51d8ddeef9273f86fb53fc-1449495.jpg!d', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://c.pxhere.com/images/dd/84/a77b9b51d8ddeef9273f86fb53fc-1449495.jpg!d', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives', 'Lives Exclusivas', 3, 'https://c.pxhere.com/images/dd/84/a77b9b51d8ddeef9273f86fb53fc-1449495.jpg!d', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Neste capitulo vamos começar', 1, 'https://c.pxhere.com/images/dd/84/a77b9b51d8ddeef9273f86fb53fc-1449495.jpg!d', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Neste capitulo vamos continuar', 2, 'https://c.pxhere.com/images/dd/84/a77b9b51d8ddeef9273f86fb53fc-1449495.jpg!d', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Neste capitulo vamos terminar', 3, 'https://c.pxhere.com/images/dd/84/a77b9b51d8ddeef9273f86fb53fc-1449495.jpg!d', 1, 2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2021-07-10T13:00:00Z', null, true, false );
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2021-07-10T13:00:00Z', null, true, false );