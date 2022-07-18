DROP USER IF EXISTS "quinella"@"%";
CREATE USER "quinella"@"%" IDENTIFIED BY "";

DROP USER IF EXISTS "itezed"@"%";
CREATE USER "itezed"@"%" IDENTIFIED BY "mè";

DROP USER IF EXISTS "bidule"@"%";
CREATE USER "bidule"@"%" IDENTIFIED BY "chouette";

GRANT ALL PRIVILEGES ON papyrus.* TO "quinella"@"%";
GRANT SELECT ON papyrus.* TO "itezed"@"%";
GRANT SELECT on papyrus.client TO "bidule"@"%";
flush PRIVILEGES;

