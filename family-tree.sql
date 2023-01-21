CREATE TYPE "relation_type" AS ENUM (
  'sibling',
  'child',
  'parent',
  'partner'
);

CREATE TABLE "person" (
  "id" SERIAL PRIMARY KEY,
  "name_first" varchar(255),
  "name_last" varchar(255),
  "years_old" integer
);

CREATE TABLE "persons_person_relations" (
  "person_id" integer REFERENCES person(id),
  "relation_type" relation_type,
  "person_relation_id" integer REFERENCES person(id),
  PRIMARY KEY ("person_id", "person_relation_id")
);


-- DROP TABLE persons_person_relations;
-- DROP TYPE relation_type;
-- DROP TABLE person;

-- INSERT INTO person (name_first, name_last, years_old)
-- VALUES ('Jakob', 'Giese', 35), ('Alison', 'Giese', 27);

-- INSERT INTO persons_person_relations (person_id, relation_type, person_relation_id) 
-- VALUES (1, 'partner', 2),(2, 'partner', 1);


-- SELECT * FROM person;
-- SELECT * FROM persons_person_relations;

