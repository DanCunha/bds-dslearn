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

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Neste capitulo vamos come??ar', 1, 'https://c.pxhere.com/images/dd/84/a77b9b51d8ddeef9273f86fb53fc-1449495.jpg!d', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Neste capitulo vamos continuar', 2, 'https://c.pxhere.com/images/dd/84/a77b9b51d8ddeef9273f86fb53fc-1449495.jpg!d', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Neste capitulo vamos terminar', 3, 'https://c.pxhere.com/images/dd/84/a77b9b51d8ddeef9273f86fb53fc-1449495.jpg!d', 1, 2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2021-07-10T13:00:00Z', null, true, false );
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2021-07-10T13:00:00Z', null, true, false );

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 Capitulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de Apoio', 'https://youtu.be/xusoYlDpcio');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 Capitulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, 'Material de Apoio', 'https://youtu.be/xusoYlDpcio');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 Capitulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, 'Material de Apoio', 'https://youtu.be/xusoYlDpcio');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 Capitulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES(4, 'Fazer um trabalho top', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-07-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES(1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES(2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resources/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resources/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', false, '/offers/1/resources/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 1', 'Corpo do t??pico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 2', 'Corpo do t??pico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 3', 'Corpo do t??pico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 4', 'Corpo do t??pico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 5', 'Corpo do t??pico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 6', 'Corpo do t??pico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);