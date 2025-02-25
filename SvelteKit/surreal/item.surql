DEFINE TABLE OVERWRITE category SCHEMAFULL
  PERMISSIONS
    FOR select WHERE $auth
    FOR create, update, delete WHERE $auth.is_admin;

DEFINE FIELD OVERWRITE name ON TABLE category TYPE string;

DEFINE TABLE OVERWRITE categorizes SCHEMAFULL
  TYPE RELATION FROM category TO item
  PERMISSIONS
    FOR select WHERE $auth
    FOR create, update, delete WHERE $auth.is_admin;

DEFINE TABLE OVERWRITE item SCHEMAFULL
  PERMISSIONS
    FOR select WHERE $auth
    FOR create, update, delete WHERE $auth.is_admin;

DEFINE FIELD OVERWRITE name ON TABLE item TYPE string;
DEFINE FIELD OVERWRITE description ON TABLE item TYPE string;
DEFINE FIELD OVERWRITE quantity ON TABLE item TYPE number DEFAULT 1;
DEFINE FIELD OVERWRITE price ON TABLE item TYPE decimal;
DEFINE FIELD OVERWRITE date_created ON TABLE item TYPE datetime VALUE time::now() DEFAULT time::now() READONLY;
DEFINE FIELD OVERWRITE last_modified ON TABLE item TYPE datetime VALUE time::now() DEFAULT time::now();

CREATE item CONTENT {
    name: "adata",
    description: "marca adata",
    price: 500.00,

};

CREATE item CONTENT {
    name: "amd",
    description: "marca amd",
    price: 400.00,
};

SELECT * FROM item;