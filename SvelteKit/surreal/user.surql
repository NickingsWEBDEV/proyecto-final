//define la forma de acceso del usuario

DEFINE ACCESS account
  ON DATABASE
  TYPE record
    SIGNUP (
      CREATE user CONTENT {
        name: $name,
        email: $email,
        password_hash: crypto::argon2::generate($password),
      }
    )
    SIGNIN (
      SELECT *
      FROM user
      WHERE
        email = $email
        AND
        crypto::argon2::compare(password_hash, $password)
    )
  DURATION
    FOR TOKEN 1h
    FOR SESSION 5m;

DEFINE TABLE user SCHEMAFULL
  PERMISSIONS
    FOR select WHERE $auth = id;

//define el los campos y tablas de user

DEFINE FIELD name ON TABLE user TYPE string;
DEFINE FIELD email ON TABLE user TYPE string ASSERT string::is::email($value);
DEFINE FIELD password_hash ON TABLE user TYPE string;


DEFINE INDEX unique_email ON TABLE user FIELDS email UNIQUE;