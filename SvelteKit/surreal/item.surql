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

CREATE item CONTENT {
    name: "estampados",
    description: "marca estampados",
    price: 800.00,
};

CREATE item CONTENT {
    name: "skived-fin",
    description: "marca skived-fin",
    price: 800.00,
};

CREATE item CONTENT {
    name: "intel",
    description: "marca intel",
    price: 400.00,
};

CREATE item CONTENT {
    name: "kingstone",
    description: "marca kingstone",
    price: 100.00,
};

CREATE item CONTENT {
    name: "knowhare",
    description: "marca knowhare",
    price: 100.00,
};

CREATE item CONTENT {
    name: "qualcomm",
    description: "marca qualcomm",
    price: 400.00,
};

CREATE item CONTENT {
    name: "forjados",
    description: "marca forjados",
    price: 800.00,

};

-- 1. Crear una pagina que muestre todos los nombres de articulos
// 2. Cree otra pàgina que tenga un formulario para crear un artìculo nuevo.