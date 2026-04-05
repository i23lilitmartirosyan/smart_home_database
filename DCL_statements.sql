/*admin → full access
operator/viewer → can read data
maintenance/staff → can read and insert some records*/

CREATE LOGIN smart_admin_login WITH PASSWORD = 'Admin123!';
GO

CREATE LOGIN smart_viewer_login WITH PASSWORD = 'Viewer123!';
GO

CREATE LOGIN smart_operator_login WITH PASSWORD = 'Operator123!';
GO
----------------------------------------------------------

CREATE USER smart_admin FOR LOGIN smart_admin_login;
GO

CREATE USER smart_viewer FOR LOGIN smart_viewer_login;
GO

CREATE USER smart_operator FOR LOGIN smart_operator_login;
GO

---------------------------------------------------------

GRANT SELECT, INSERT, UPDATE, DELETE ON [User] TO smart_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Home TO smart_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON UserHome TO smart_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Room TO smart_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Device TO smart_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Sensor TO smart_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Event TO smart_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Rules TO smart_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON ConditionTable TO smart_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON ActionTable TO smart_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON ExecutionLog TO smart_admin;
GO




GRANT SELECT ON [User] TO smart_viewer;
GRANT SELECT ON Home TO smart_viewer;
GRANT SELECT ON UserHome TO smart_viewer;
GRANT SELECT ON Room TO smart_viewer;
GRANT SELECT ON Device TO smart_viewer;
GRANT SELECT ON Sensor TO smart_viewer;
GRANT SELECT ON Event TO smart_viewer;
GRANT SELECT ON Rules TO smart_viewer;
GRANT SELECT ON ConditionTable TO smart_viewer;
GRANT SELECT ON ActionTable TO smart_viewer;
GRANT SELECT ON ExecutionLog TO smart_viewer;
GO




GRANT SELECT ON Home TO smart_operator;
GRANT SELECT ON Room TO smart_operator;
GRANT SELECT ON Device TO smart_operator;
GRANT SELECT ON Sensor TO smart_operator;
GRANT SELECT ON Event TO smart_operator;
GRANT SELECT ON Rules TO smart_operator;
GRANT SELECT ON ConditionTable TO smart_operator;
GRANT SELECT ON ActionTable TO smart_operator;
GRANT SELECT ON ExecutionLog TO smart_operator;
GO

GRANT INSERT ON Event TO smart_operator;
GRANT INSERT ON ExecutionLog TO smart_operator;
GO




REVOKE INSERT ON ExecutionLog FROM smart_operator;
GO

