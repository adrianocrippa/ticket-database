

INSERT INTO sponsor (company_name, email, address, number, complement,
                     city, postal_code, province, country, description)
VALUES ('Amazon', 'comercial@amazon.com', 'Amazon St.', 1, 'MKT-121',
        'Toronto', 'A1A 1A1', 'Ontario', 'Canada','contact person: Jeff Bezos');

INSERT INTO sponsor (company_name, email, address, number,
                     city, postal_code, province, country, description)
VALUES ('Tesla', 'e.musk@tesla.com', 'QC-138', 5525,
        'Ste. Rose', '1A1 A1A', 'Qc', 'Canada','Close on fridays');

INSERT INTO "user" (first_name, last_name, email, address, number,
                  city, postal_code, province, country)
VALUES ('Joselito', 'Cascatinha', 'joselito@cascatinha.com', 'Serelepe street', 69,
        'Levis', '1B1 B1B', 'QC', 'Canada');

INSERT INTO "user" (first_name, last_name, email, address, number,
                  city, postal_code, province, country)
 VALUES ('Hermes', 'Trimesgisto', 'test@test.com', 'Test street', 00,
        'Ville de test', 'testezipcode', 'XX', 'test');

INSERT INTO "user" (first_name, last_name, email, address, number,
                  city, postal_code, country, province)
VALUES       ('Edson', 'Arantes do Nascimento', 'pele@pele.com.br', 'Vila Belmiro', 1,
        'Santos', '95520-000', 'test', 'SP');

INSERT INTO "user" (first_name, last_name, email, address, number,
                  city, postal_code, country, province)
VALUES       ('Cristina', 'Ranzollin', 'cris_rbs@ja.com.br', 'Morro Santa Teresa', 1001,
        'Porto Alegre', '00000-000', 'Brazil', 'RS');

INSERT INTO newsletter (opted_in, user_id) VALUES (TRUE, 1);
INSERT INTO newsletter (opted_in, user_id) VALUES (FALSE, 2);
INSERT INTO newsletter (opted_in, user_id) VALUES (TRUE, 3);
INSERT INTO newsletter (opted_in, user_id) VALUES (FALSE, 4);

INSERT INTO category (category_name, age_limit) VALUES ('Concert',16);
INSERT INTO category (category_name, age_limit) VALUES ('Opera', 18);
INSERT INTO category (category_name, category_subname, age_limit) VALUES ('Sports', 'Formula-1', 12 );

INSERT INTO event (event_name, date_time, venue, address, number,
                   city, postal_code, province, country, description, category_id, sponsor_id)
VALUES ('GP MONTREAL - 2023', '2023-06-18 08:30:00', 'Circuit Gilles-Villeneuve', 'Ille Notre-Dame', 1,
        'Montreal', 'AAA 111','QC','Canada', '68th edition', 3, 2);

INSERT INTO event (event_name, date_time, venue, address, number,
                   city, postal_code, province, country, description, category_id, sponsor_id)
VALUES ('Metallica - Live', '2023-06-17 19:30:00', 'Centre Bell', 'Place Centre Bell', 1995,
        'Montreal', 'AA2 111','QC','Canada', 'North America 2023 Tour', 1, 1);

INSERT INTO event (event_name, date_time, venue, address, number,
                   city, postal_code, province, country, category_id, sponsor_id)
VALUES ('PAGLIACCI - OPERA', '2023-12-31 23:59:59', 'Opera House', 'Via Principale', 123,
        'Roma', 'AA3 111', 'unknow', 'Italya', 2, 2);

INSERT INTO payment (payment_method, ammount, user_id)
VALUES ('Visa', 99.20, 1);

INSERT INTO payment (payment_method, ammount, user_id)
VALUES ('Master', 345.66, 2);

INSERT INTO payment (payment_method, ammount, user_id)
VALUES ('AMEX', 3854.44, 4);

INSERT INTO ticket (level, section, row, seat,
                    payment_id, event_id, user_id)
VALUES ('T47',3,'B', 16,1,1,1);

INSERT INTO ticket (level, section, row, seat,
                    payment_id, event_id, user_id)
VALUES ('T47',3,'B', 17,1,1,1);

INSERT INTO ticket (level, section, row, seat,
                    payment_id, event_id, user_id)
VALUES ('T47',3,'B', 18,1,1,1);

INSERT INTO ticket (level, description, payment_id, event_id, user_id)
VALUES ('Platinum','VIP - FREE ACCESS',3,2,4);

INSERT INTO ticket (level, description, payment_id, event_id, user_id)
VALUES ('Platinum','VIP - FREE ACCESS',3,2,4);

INSERT INTO ticket (level, description, payment_id, event_id, user_id)
VALUES ('Platinum','VIP - FREE ACCESS',3,2,4);

INSERT INTO ticket (level, section, row, seat, payment_id,
                    event_id, user_id)
VALUES ('Mezzanine', 4, 'BB', 7,2,3,2);

INSERT INTO ticket (level, section, row, seat, payment_id,
                    event_id, user_id)
VALUES ('Mezzanine', 4, 'BB', 9,2,3,2);

INSERT INTO ticket (level, section, row, seat, payment_id,
                    event_id, user_id, new_owner_id)
VALUES ('Mezzanine', 4, 'BB', 7,2,3,2,3);

INSERT INTO wallet (wallet_nickname, user_id, ticket_id) VALUES ('Pele`s Wallet', 3, 9);


