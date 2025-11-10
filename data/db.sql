-- H2 2.3.232;
;             
CREATE USER IF NOT EXISTS "SA" SALT 'c9ced005b179d47c' HASH '1d1b30412b841f00235250b907cc586fa9e850ecd41975b77792b527ff521381' ADMIN;         
CREATE CACHED TABLE "PUBLIC"."establishment"(
    "id" UUID NOT NULL,
    "location" CHARACTER VARYING(1000),
    "name" CHARACTER VARYING(60)
);         
ALTER TABLE "PUBLIC"."establishment" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A" PRIMARY KEY("id");
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.establishment;           
CREATE CACHED TABLE "PUBLIC"."image"(
    "id" UUID NOT NULL,
    "url" CHARACTER VARYING(255)
);          
ALTER TABLE "PUBLIC"."image" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_5" PRIMARY KEY("id");        
-- 10 +/- SELECT COUNT(*) FROM PUBLIC.image;  
INSERT INTO "PUBLIC"."image" VALUES
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
CREATE CACHED TABLE "PUBLIC"."item"(
    "id" UUID NOT NULL,
    "description" CHARACTER VARYING(3000),
    "end_date" DATE,
    "order" INTEGER NOT NULL,
    "start_date" DATE,
    "title" CHARACTER VARYING(150),
    "establishment_id" UUID,
    "section_id" UUID NOT NULL,
    "type_id" UUID NOT NULL
);   
ALTER TABLE "PUBLIC"."item" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_3" PRIMARY KEY("id");         
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.item;    
CREATE CACHED TABLE "PUBLIC"."item_type"(
    "id" UUID NOT NULL,
    "name" CHARACTER VARYING(60)
);      
ALTER TABLE "PUBLIC"."item_type" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_8" PRIMARY KEY("id");    
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.item_type;               
CREATE CACHED TABLE "PUBLIC"."profile"(
    "id" UUID NOT NULL,
    "description" CHARACTER VARYING(1000),
    "name" CHARACTER VARYING(60),
    "slug" CHARACTER VARYING(30),
    "owner_id" UUID NOT NULL,
    "photo_id" UUID
);    
ALTER TABLE "PUBLIC"."profile" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_E" PRIMARY KEY("id");      
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.profile; 
CREATE CACHED TABLE "PUBLIC"."profile_images"(
    "profiles_id" UUID NOT NULL,
    "images_id" UUID NOT NULL
);           
ALTER TABLE "PUBLIC"."profile_images" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_C" PRIMARY KEY("profiles_id", "images_id");         
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.profile_images;          
CREATE CACHED TABLE "PUBLIC"."profile_templates"(
    "profiles_id" UUID NOT NULL,
    "templates_id" UUID NOT NULL
);     
ALTER TABLE "PUBLIC"."profile_templates" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A0" PRIMARY KEY("profiles_id", "templates_id");  
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.profile_templates;       
CREATE CACHED TABLE "PUBLIC"."section"(
    "id" UUID NOT NULL,
    "order" INTEGER NOT NULL,
    "title" CHARACTER VARYING(150),
    "profile_id" UUID NOT NULL
);      
ALTER TABLE "PUBLIC"."section" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_7" PRIMARY KEY("id");      
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.section; 
CREATE CACHED TABLE "PUBLIC"."template"(
    "id" UUID NOT NULL,
    "description" CHARACTER VARYING(1000),
    "name" CHARACTER VARYING(60),
    "portfolio" BOOLEAN,
    "presentation" CHARACTER LARGE OBJECT,
    "structure" CHARACTER LARGE OBJECT
);            
ALTER TABLE "PUBLIC"."template" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_B" PRIMARY KEY("id");     
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.template;
CREATE CACHED TABLE "PUBLIC"."user"(
    "id" UUID NOT NULL,
    "email" CHARACTER VARYING(255),
    "first_name" CHARACTER VARYING(20),
    "last_name" CHARACTER VARYING(35),
    "login" CHARACTER VARYING(20),
    "password" CHARACTER VARYING(255)
);            
ALTER TABLE "PUBLIC"."user" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_36" PRIMARY KEY("id");        
-- 0 +/- SELECT COUNT(*) FROM PUBLIC."user";  
ALTER TABLE "PUBLIC"."user" ADD CONSTRAINT "PUBLIC"."UK9m9emq1y40pdf6udhgb9mmmjn" UNIQUE NULLS DISTINCT ("login");            
ALTER TABLE "PUBLIC"."profile" ADD CONSTRAINT "PUBLIC"."UKsmnmc2srvx9r5qp0nv5dguwp7" UNIQUE NULLS DISTINCT ("slug");          
ALTER TABLE "PUBLIC"."profile_images" ADD CONSTRAINT "PUBLIC"."FKxcd5iv14ej2ulf1yriur3hq8" FOREIGN KEY("profiles_id") REFERENCES "PUBLIC"."profile"("id") NOCHECK;            
ALTER TABLE "PUBLIC"."profile" ADD CONSTRAINT "PUBLIC"."FK8afa8eod6gxydpihqa2gxd2h3" FOREIGN KEY("owner_id") REFERENCES "PUBLIC"."user"("id") NOCHECK;        
ALTER TABLE "PUBLIC"."profile_images" ADD CONSTRAINT "PUBLIC"."FKgjr4jb2mudglotq1ckkmac725" FOREIGN KEY("images_id") REFERENCES "PUBLIC"."image"("id") NOCHECK;               
ALTER TABLE "PUBLIC"."profile_templates" ADD CONSTRAINT "PUBLIC"."FK79683k2cqwvty75gykgikii6n" FOREIGN KEY("profiles_id") REFERENCES "PUBLIC"."profile"("id") NOCHECK;        
ALTER TABLE "PUBLIC"."profile_templates" ADD CONSTRAINT "PUBLIC"."FK8lwhi5k00ievhuvmh3v33t9a7" FOREIGN KEY("templates_id") REFERENCES "PUBLIC"."template"("id") NOCHECK;      
ALTER TABLE "PUBLIC"."section" ADD CONSTRAINT "PUBLIC"."FK43l5m2dmdh12uavx00mx0qfmw" FOREIGN KEY("profile_id") REFERENCES "PUBLIC"."profile"("id") NOCHECK;   
ALTER TABLE "PUBLIC"."item" ADD CONSTRAINT "PUBLIC"."FKtc6mbaexo1dar38p0six1abln" FOREIGN KEY("section_id") REFERENCES "PUBLIC"."section"("id") NOCHECK;      
ALTER TABLE "PUBLIC"."item" ADD CONSTRAINT "PUBLIC"."FKsvlidsmaffp9wqrkr76o72mef" FOREIGN KEY("type_id") REFERENCES "PUBLIC"."item_type"("id") NOCHECK;       
ALTER TABLE "PUBLIC"."item" ADD CONSTRAINT "PUBLIC"."FK5d1iings2l7go7b0oxl2twdmj" FOREIGN KEY("establishment_id") REFERENCES "PUBLIC"."establishment"("id") NOCHECK;          
ALTER TABLE "PUBLIC"."profile" ADD CONSTRAINT "PUBLIC"."FKyx6nwkenwwxr27p9q0kwmt8q" FOREIGN KEY("photo_id") REFERENCES "PUBLIC"."image"("id") NOCHECK;        
