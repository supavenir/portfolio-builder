-- Insertion dans la table USER (10 utilisateurs)
INSERT INTO "PUBLIC"."user" ("id", "first_name", "last_name", "login", "password", "email") VALUES
                                                                                                (UUID 'a1111111-1111-1111-1111-111111111111', 'Marie', 'DUPONT', 'mdupont', '$2a$10$k.xg6GbJIkLjP9qdGkELQu5OZIddnfgdUrGIb0aaSJ4l1f8iohs5C', 'marie.dupont@email.com'),
                                                                                                (UUID 'a2222222-2222-2222-2222-222222222222', 'Pierre', 'MARTIN', 'pmartin', '$2a$10$k.xg6GbJIkLjP9qdGkELQu5OZIddnfgdUrGIb0aaSJ4l1f8iohs5C', 'pierre.martin@email.com'),
                                                                                                (UUID 'a3333333-3333-3333-3333-333333333333', 'Sophie', 'BERNARD', 'sbernard', '$2a$10$k.xg6GbJIkLjP9qdGkELQu5OZIddnfgdUrGIb0aaSJ4l1f8iohs5C', 'sophie.bernard@email.com'),
                                                                                                (UUID 'a4444444-4444-4444-4444-444444444444', 'Lucas', 'PETIT', 'lpetit', '$2a$10$k.xg6GbJIkLjP9qdGkELQu5OZIddnfgdUrGIb0aaSJ4l1f8iohs5C', 'lucas.petit@email.com'),
                                                                                                (UUID 'a5555555-5555-5555-5555-555555555555', 'Emma', 'DURAND', 'edurand', '$2a$10$k.xg6GbJIkLjP9qdGkELQu5OZIddnfgdUrGIb0aaSJ4l1f8iohs5C', 'emma.durand@email.com'),
                                                                                                (UUID 'a6666666-6666-6666-6666-666666666666', 'Thomas', 'LEROY', 'tleroy', '$2a$10$k.xg6GbJIkLjP9qdGkELQu5OZIddnfgdUrGIb0aaSJ4l1f8iohs5C', 'thomas.leroy@email.com'),
                                                                                                (UUID 'a7777777-7777-7777-7777-777777777777', 'Léa', 'MOREAU', 'lmoreau', '$2a$10$k.xg6GbJIkLjP9qdGkELQu5OZIddnfgdUrGIb0aaSJ4l1f8iohs5C', 'lea.moreau@email.com'),
                                                                                                (UUID 'a8888888-8888-8888-8888-888888888888', 'Hugo', 'SIMON', 'hsimon', '$2a$10$k.xg6GbJIkLjP9qdGkELQu5OZIddnfgdUrGIb0aaSJ4l1f8iohs5C', 'hugo.simon@email.com'),
                                                                                                (UUID 'a9999999-9999-9999-9999-999999999999', 'Chloé', 'LAURENT', 'claurent', '$2a$10$k.xg6GbJIkLjP9qdGkELQu5OZIddnfgdUrGIb0aaSJ4l1f8iohs5C', 'chloe.laurent@email.com'),
                                                                                                (UUID 'a0000000-0000-0000-0000-000000000000', 'Julien', 'GIRARD', 'jgirard', '$2a$10$k.xg6GbJIkLjP9qdGkELQu5OZIddnfgdUrGIb0aaSJ4l1f8iohs5C', 'julien.girard@email.com');

-- Insertion dans la table IMAGE (10 images)
INSERT INTO "PUBLIC"."image" ("id", "url") VALUES
                                               (UUID 'b1111111-1111-1111-1111-111111111111', 'https://example.com/images/photo1.jpg'),
                                               (UUID 'b2222222-2222-2222-2222-222222222222', 'https://example.com/images/photo2.jpg'),
                                               (UUID 'b3333333-3333-3333-3333-333333333333', 'https://example.com/images/photo3.jpg'),
                                               (UUID 'b4444444-4444-4444-4444-444444444444', 'https://example.com/images/photo4.jpg'),
                                               (UUID 'b5555555-5555-5555-5555-555555555555', 'https://example.com/images/photo5.jpg'),
                                               (UUID 'b6666666-6666-6666-6666-666666666666', 'https://example.com/images/photo6.jpg'),
                                               (UUID 'b7777777-7777-7777-7777-777777777777', 'https://example.com/images/photo7.jpg'),
                                               (UUID 'b8888888-8888-8888-8888-888888888888', 'https://example.com/images/photo8.jpg'),
                                               (UUID 'b9999999-9999-9999-9999-999999999999', 'https://example.com/images/photo9.jpg'),
                                               (UUID 'b0000000-0000-0000-0000-000000000000', 'https://example.com/images/photo10.jpg');

-- Insertion dans la table TEMPLATE (10 templates)
INSERT INTO "PUBLIC"."template" ("id", "name", "description", "portfolio", "presentation", "structure") VALUES
                                                                                                            (UUID 'c1111111-1111-1111-1111-111111111111', 'CV Classique', 'Template de CV au format traditionnel', FALSE, '<h1>Présentation CV Classique</h1>', '{"sections": ["formation", "experience"]}'),
                                                                                                            (UUID 'c2222222-2222-2222-2222-222222222222', 'CV Moderne', 'Template de CV avec design contemporain', FALSE, '<h1>Présentation CV Moderne</h1>', '{"sections": ["competences", "projets"]}'),
                                                                                                            (UUID 'c3333333-3333-3333-3333-333333333333', 'Portfolio Créatif', 'Template pour portfolio de créatifs', TRUE, '<h1>Portfolio Créatif</h1>', '{"sections": ["galerie", "realisations"]}'),
                                                                                                            (UUID 'c4444444-4444-4444-4444-444444444444', 'Portfolio Photographe', 'Template spécial photographie', TRUE, '<h1>Portfolio Photo</h1>', '{"sections": ["galerie", "bio"]}'),
                                                                                                            (UUID 'c5555555-5555-5555-5555-555555555555', 'CV Tech', 'Template pour profils techniques', FALSE, '<h1>CV Tech</h1>', '{"sections": ["stack", "projets"]}'),
                                                                                                            (UUID 'c6666666-6666-6666-6666-666666666666', 'Portfolio Designer', 'Template pour designers UX/UI', TRUE, '<h1>Portfolio Design</h1>', '{"sections": ["projets", "process"]}'),
                                                                                                            (UUID 'c7777777-7777-7777-7777-777777777777', 'CV Académique', 'Template pour profils recherche', FALSE, '<h1>CV Académique</h1>', '{"sections": ["publications", "recherche"]}'),
                                                                                                            (UUID 'c8888888-8888-8888-8888-888888888888', 'Portfolio Dev', 'Template pour développeurs', TRUE, '<h1>Portfolio Développeur</h1>', '{"sections": ["projets", "github"]}'),
                                                                                                            (UUID 'c9999999-9999-9999-9999-999999999999', 'CV Minimaliste', 'Template épuré et minimaliste', FALSE, '<h1>CV Minimaliste</h1>', '{"sections": ["essentials"]}'),
                                                                                                            (UUID 'c0000000-0000-0000-0000-000000000000', 'Portfolio Complet', 'Template portfolio multi-usages', TRUE, '<h1>Portfolio Complet</h1>', '{"sections": ["about", "work", "contact"]}');

-- Insertion dans la table PROFILE (10 profils)
INSERT INTO "PUBLIC"."profile" ("id", "name", "description", "slug", "owner_id", "photo_id") VALUES
                                                                                                 (UUID 'd1111111-1111-1111-1111-111111111111', 'Marie Dupont - Dev Full-Stack', 'Développeuse passionnée par les technologies web', 'marie-dupont', UUID 'a1111111-1111-1111-1111-111111111111', UUID 'b1111111-1111-1111-1111-111111111111'),
                                                                                                 (UUID 'd2222222-2222-2222-2222-222222222222', 'Pierre Martin - Chef de Projet', 'Expert en gestion de projets IT', 'pierre-martin', UUID 'a2222222-2222-2222-2222-222222222222', UUID 'b2222222-2222-2222-2222-222222222222'),
                                                                                                 (UUID 'd3333333-3333-3333-3333-333333333333', 'Sophie Bernard - Data Scientist', 'Spécialiste en machine learning', 'sophie-bernard', UUID 'a3333333-3333-3333-3333-333333333333', UUID 'b3333333-3333-3333-3333-333333333333'),
                                                                                                 (UUID 'd4444444-4444-4444-4444-444444444444', 'Lucas Petit - DevOps', 'Automatisation et infrastructure cloud', 'lucas-petit', UUID 'a4444444-4444-4444-4444-444444444444', UUID 'b4444444-4444-4444-4444-444444444444'),
                                                                                                 (UUID 'd5555555-5555-5555-5555-555555555555', 'Emma Durand - UX/UI Designer', 'Création d''expériences utilisateur innovantes', 'emma-durand', UUID 'a5555555-5555-5555-5555-555555555555', UUID 'b5555555-5555-5555-5555-555555555555'),
                                                                                                 (UUID 'd6666666-6666-6666-6666-666666666666', 'Thomas Leroy - Architecte', 'Architecture logicielle et microservices', 'thomas-leroy', UUID 'a6666666-6666-6666-6666-666666666666', UUID 'b6666666-6666-6666-6666-666666666666'),
                                                                                                 (UUID 'd7777777-7777-7777-7777-777777777777', 'Léa Moreau - Chercheuse IA', 'Recherche en deep learning', 'lea-moreau', UUID 'a7777777-7777-7777-7777-777777777777', UUID 'b7777777-7777-7777-7777-777777777777'),
                                                                                                 (UUID 'd8888888-8888-8888-8888-888888888888', 'Hugo Simon - Product Owner', 'Vision produit et stratégie utilisateur', 'hugo-simon', UUID 'a8888888-8888-8888-8888-888888888888', UUID 'b8888888-8888-8888-8888-888888888888'),
                                                                                                 (UUID 'd9999999-9999-9999-9999-999999999999', 'Chloé Laurent - Photographe', 'Photographie mariage et événementiel', 'chloe-laurent', UUID 'a9999999-9999-9999-9999-999999999999', UUID 'b9999999-9999-9999-9999-999999999999'),
                                                                                                 (UUID 'd0000000-0000-0000-0000-000000000000', 'Julien Girard - Marketing', 'Stratégie digitale et SEO', 'julien-girard', UUID 'a0000000-0000-0000-0000-000000000000', UUID 'b0000000-0000-0000-0000-000000000000');

-- Insertion dans la table PROFILE_TEMPLATES (relation many-to-many)
INSERT INTO "PUBLIC"."profile_templates" ("profiles_id", "templates_id") VALUES
                                                                             (UUID 'd1111111-1111-1111-1111-111111111111', UUID 'c5555555-5555-5555-5555-555555555555'),
                                                                             (UUID 'd1111111-1111-1111-1111-111111111111', UUID 'c8888888-8888-8888-8888-888888888888'),
                                                                             (UUID 'd2222222-2222-2222-2222-222222222222', UUID 'c1111111-1111-1111-1111-111111111111'),
                                                                             (UUID 'd3333333-3333-3333-3333-333333333333', UUID 'c5555555-5555-5555-5555-555555555555'),
                                                                             (UUID 'd4444444-4444-4444-4444-444444444444', UUID 'c5555555-5555-5555-5555-555555555555'),
                                                                             (UUID 'd5555555-5555-5555-5555-555555555555', UUID 'c6666666-6666-6666-6666-666666666666'),
                                                                             (UUID 'd5555555-5555-5555-5555-555555555555', UUID 'c3333333-3333-3333-3333-333333333333'),
                                                                             (UUID 'd6666666-6666-6666-6666-666666666666', UUID 'c5555555-5555-5555-5555-555555555555'),
                                                                             (UUID 'd7777777-7777-7777-7777-777777777777', UUID 'c7777777-7777-7777-7777-777777777777'),
                                                                             (UUID 'd8888888-8888-8888-8888-888888888888', UUID 'c2222222-2222-2222-2222-222222222222'),
                                                                             (UUID 'd9999999-9999-9999-9999-999999999999', UUID 'c4444444-4444-4444-4444-444444444444'),
                                                                             (UUID 'd0000000-0000-0000-0000-000000000000', UUID 'c2222222-2222-2222-2222-222222222222');

-- Insertion dans la table PROFILE_IMAGES (relation many-to-many)
INSERT INTO "PUBLIC"."profile_images" ("profiles_id", "images_id") VALUES
                                                                       (UUID 'd1111111-1111-1111-1111-111111111111', UUID 'b1111111-1111-1111-1111-111111111111'),
                                                                       (UUID 'd2222222-2222-2222-2222-222222222222', UUID 'b2222222-2222-2222-2222-222222222222'),
                                                                       (UUID 'd3333333-3333-3333-3333-333333333333', UUID 'b3333333-3333-3333-3333-333333333333'),
                                                                       (UUID 'd4444444-4444-4444-4444-444444444444', UUID 'b4444444-4444-4444-4444-444444444444'),
                                                                       (UUID 'd5555555-5555-5555-5555-555555555555', UUID 'b5555555-5555-5555-5555-555555555555'),
                                                                       (UUID 'd5555555-5555-5555-5555-555555555555', UUID 'b6666666-6666-6666-6666-666666666666'),
                                                                       (UUID 'd6666666-6666-6666-6666-666666666666', UUID 'b7777777-7777-7777-7777-777777777777'),
                                                                       (UUID 'd7777777-7777-7777-7777-777777777777', UUID 'b8888888-8888-8888-8888-888888888888'),
                                                                       (UUID 'd8888888-8888-8888-8888-888888888888', UUID 'b9999999-9999-9999-9999-999999999999'),
                                                                       (UUID 'd9999999-9999-9999-9999-999999999999', UUID 'b0000000-0000-0000-0000-000000000000'),
                                                                       (UUID 'd9999999-9999-9999-9999-999999999999', UUID 'b1111111-1111-1111-1111-111111111111'),
                                                                       (UUID 'd0000000-0000-0000-0000-000000000000', UUID 'b2222222-2222-2222-2222-222222222222');

-- Insertion dans la table ESTABLISHMENT (10 établissements)
INSERT INTO "PUBLIC"."establishment" ("id", "name", "location") VALUES
                                                                    (UUID 'e1111111-1111-1111-1111-111111111111', 'Université Paris-Saclay', 'Gif-sur-Yvette, France'),
                                                                    (UUID 'e2222222-2222-2222-2222-222222222222', 'École de Management de Lyon', 'Lyon, France'),
                                                                    (UUID 'e3333333-3333-3333-3333-333333333333', 'MIT', 'Cambridge, MA, USA'),
                                                                    (UUID 'e4444444-4444-4444-4444-444444444444', 'École des Beaux-Arts', 'Paris, France'),
                                                                    (UUID 'e5555555-5555-5555-5555-555555555555', 'TechCorp Solutions', 'Paris, France'),
                                                                    (UUID 'e6666666-6666-6666-6666-666666666666', 'Digital Consulting Group', 'Lyon, France'),
                                                                    (UUID 'e7777777-7777-7777-7777-777777777777', 'Startup Innovation Lab', 'Toulouse, France'),
                                                                    (UUID 'e8888888-8888-8888-8888-888888888888', 'BNP Paribas', 'Paris, France'),
                                                                    (UUID 'e9999999-9999-9999-9999-999999999999', 'Google France', 'Paris, France'),
                                                                    (UUID 'e0000000-0000-0000-0000-000000000000', 'Agence Créative Paris', 'Paris, France');

-- Insertion dans la table ITEM_TYPE (10 types)
INSERT INTO "PUBLIC"."item_type" ("id", "name") VALUES
                                                    (UUID 'f1111111-1111-1111-1111-111111111111', 'Formation'),
                                                    (UUID 'f2222222-2222-2222-2222-222222222222', 'Expérience'),
                                                    (UUID 'f3333333-3333-3333-3333-333333333333', 'Projet'),
                                                    (UUID 'f4444444-4444-4444-4444-444444444444', 'Certification'),
                                                    (UUID 'f5555555-5555-5555-5555-555555555555', 'Compétence'),
                                                    (UUID 'f6666666-6666-6666-6666-666666666666', 'Publication'),
                                                    (UUID 'f7777777-7777-7777-7777-777777777777', 'Réalisation'),
                                                    (UUID 'f8888888-8888-8888-8888-888888888888', 'Stage'),
                                                    (UUID 'f9999999-9999-9999-9999-999999999999', 'Bénévolat'),
                                                    (UUID 'f0000000-0000-0000-0000-000000000000', 'Prix');

-- Insertion dans la table SECTION (10 sections) - UUID valides avec préfixe '1'
INSERT INTO "PUBLIC"."section" ("id", "title", "order", "profile_id") VALUES
                                                                          (UUID '11111111-1111-1111-1111-111111111111', 'Formation', 1, UUID 'd1111111-1111-1111-1111-111111111111'),
                                                                          (UUID '12222222-2222-2222-2222-222222222222', 'Expériences Professionnelles', 2, UUID 'd1111111-1111-1111-1111-111111111111'),
                                                                          (UUID '13333333-3333-3333-3333-333333333333', 'Projets', 3, UUID 'd1111111-1111-1111-1111-111111111111'),
                                                                          (UUID '14444444-4444-4444-4444-444444444444', 'Expériences', 1, UUID 'd2222222-2222-2222-2222-222222222222'),
                                                                          (UUID '15555555-5555-5555-5555-555555555555', 'Certifications', 2, UUID 'd2222222-2222-2222-2222-222222222222'),
                                                                          (UUID '16666666-6666-6666-6666-666666666666', 'Compétences', 1, UUID 'd3333333-3333-3333-3333-333333333333'),
                                                                          (UUID '17777777-7777-7777-7777-777777777777', 'Projets Data', 2, UUID 'd3333333-3333-3333-3333-333333333333'),
                                                                          (UUID '18888888-8888-8888-8888-888888888888', 'Portfolio Design', 1, UUID 'd5555555-5555-5555-5555-555555555555'),
                                                                          (UUID '19999999-9999-9999-9999-999999999999', 'Réalisations', 1, UUID 'd9999999-9999-9999-9999-999999999999'),
                                                                          (UUID '10000000-0000-0000-0000-000000000000', 'Campagnes', 1, UUID 'd0000000-0000-0000-0000-000000000000');

-- Insertion dans la table ITEM (15 items) - UUID valides avec préfixe '2'
INSERT INTO "PUBLIC"."item" ("id", "title", "description", "start_date", "end_date", "order", "section_id", "establishment_id", "type_id") VALUES
                                                                                                                                               (UUID '21111111-1111-1111-1111-111111111111', 'Master Informatique', 'Master en informatique, spécialité développement web', DATE '2021-09-01', DATE '2023-06-30', 1, UUID '11111111-1111-1111-1111-111111111111', UUID 'e1111111-1111-1111-1111-111111111111', UUID 'f1111111-1111-1111-1111-111111111111'),
                                                                                                                                               (UUID '22222222-2222-2222-2222-222222222222', 'Développeur Full-Stack', 'Développement d''applications web avec React et Node.js', DATE '2023-07-01', NULL, 1, UUID '12222222-2222-2222-2222-222222222222', UUID 'e5555555-5555-5555-5555-555555555555', UUID 'f2222222-2222-2222-2222-222222222222'),
                                                                                                                                               (UUID '23333333-3333-3333-3333-333333333333', 'Plateforme E-commerce', 'Création d''une plateforme de vente en ligne avec paiement sécurisé', DATE '2023-01-15', DATE '2023-06-30', 1, UUID '13333333-3333-3333-3333-333333333333', NULL, UUID 'f3333333-3333-3333-3333-333333333333'),
                                                                                                                                               (UUID '24444444-4444-4444-4444-444444444444', 'Chef de Projet IT', 'Gestion de projets IT pour clients grands comptes', DATE '2021-07-01', NULL, 1, UUID '14444444-4444-4444-4444-444444444444', UUID 'e6666666-6666-6666-6666-666666666666', UUID 'f2222222-2222-2222-2222-222222222222'),
                                                                                                                                               (UUID '25555555-5555-5555-5555-555555555555', 'Certification PMP', 'Certification Project Management Professional', DATE '2022-11-15', DATE '2022-11-15', 1, UUID '15555555-5555-5555-5555-555555555555', NULL, UUID 'f4444444-4444-4444-4444-444444444444'),
                                                                                                                                               (UUID '26666666-6666-6666-6666-666666666666', 'Python & Machine Learning', 'Expertise en Python, TensorFlow, scikit-learn', NULL, NULL, 1, UUID '16666666-6666-6666-6666-666666666666', NULL, UUID 'f5555555-5555-5555-5555-555555555555'),
                                                                                                                                               (UUID '27777777-7777-7777-7777-777777777777', 'Prédiction churn clients', 'Modèle de prédiction du taux d''attrition client', DATE '2023-03-01', DATE '2023-08-31', 1, UUID '17777777-7777-7777-7777-777777777777', UUID 'e8888888-8888-8888-8888-888888888888', UUID 'f3333333-3333-3333-3333-333333333333'),
                                                                                                                                               (UUID '28888888-8888-8888-8888-888888888888', 'Application Mobile Banking', 'Design complet d''une application de banque mobile', DATE '2022-09-01', DATE '2023-02-28', 1, UUID '18888888-8888-8888-8888-888888888888', NULL, UUID 'f7777777-7777-7777-7777-777777777777'),
                                                                                                                                               (UUID '29999999-9999-9999-9999-999999999999', 'Refonte UX site e-commerce', 'Amélioration de l''expérience utilisateur et taux de conversion', DATE '2023-01-10', DATE '2023-05-20', 2, UUID '18888888-8888-8888-8888-888888888888', UUID 'e0000000-0000-0000-0000-000000000000', UUID 'f7777777-7777-7777-7777-777777777777'),
                                                                                                                                               (UUID '20000000-0000-0000-0000-000000000000', 'Mariages 2023', 'Reportages photo de 15 mariages', DATE '2023-01-01', NULL, 1, UUID '19999999-9999-9999-9999-999999999999', NULL, UUID 'f7777777-7777-7777-7777-777777777777'),
                                                                                                                                               (UUID '2aaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Campagne Social Media Luxe', 'Stratégie Instagram pour marque de luxe française', DATE '2023-03-01', DATE '2023-08-31', 1, UUID '10000000-0000-0000-0000-000000000000', NULL, UUID 'f3333333-3333-3333-3333-333333333333'),
                                                                                                                                               (UUID '2bbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Stage Développeur Mobile', 'Stage de fin d''études en développement React Native', DATE '2023-02-01', DATE '2023-06-30', 2, UUID '12222222-2222-2222-2222-222222222222', UUID 'e7777777-7777-7777-7777-777777777777', UUID 'f8888888-8888-8888-8888-888888888888'),
                                                                                                                                               (UUID '2ccccccc-cccc-cccc-cccc-cccccccccccc', 'AWS Certified Solutions Architect', 'Certification AWS niveau Associate', DATE '2023-04-20', DATE '2023-04-20', 2, UUID '15555555-5555-5555-5555-555555555555', NULL, UUID 'f4444444-4444-4444-4444-444444444444'),
                                                                                                                                               (UUID '2ddddddd-dddd-dddd-dddd-dddddddddddd', 'Licence Gestion', 'Licence en gestion de projet et management', DATE '2018-09-01', DATE '2021-06-30', 2, UUID '11111111-1111-1111-1111-111111111111', UUID 'e2222222-2222-2222-2222-222222222222', UUID 'f1111111-1111-1111-1111-111111111111'),
                                                                                                                                               (UUID '2eeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'SQL & NoSQL', 'Maîtrise PostgreSQL, MongoDB, Redis', NULL, NULL, 2, UUID '16666666-6666-6666-6666-666666666666', NULL, UUID 'f5555555-5555-5555-5555-555555555555');
