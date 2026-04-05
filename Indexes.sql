CREATE INDEX IX_Room_HomeId ON Room(home_id);
GO

CREATE INDEX IX_Device_RoomId ON Device(room_id);
GO

CREATE INDEX IX_Sensor_DeviceId ON Sensor(device_id);
GO

CREATE INDEX IX_Event_SensorId ON Event(sensor_id);
GO

CREATE INDEX IX_Event_Timestamp ON Event([timestamp]);
GO

CREATE INDEX IX_Rules_HomeId ON Rules(home_id);
GO

CREATE INDEX IX_ActionTable_RuleId ON ActionTable(rule_id);
GO

CREATE INDEX IX_ExecutionLog_RuleId ON ExecutionLog(rule_id);
GO




SELECT * 
FROM Event 
WHERE sensor_id = 5;



SELECT 
    i.name AS index_name,
    t.name AS table_name,
    c.name AS column_name
FROM sys.indexes i
JOIN sys.index_columns ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
JOIN sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
JOIN sys.tables t ON i.object_id = t.object_id
WHERE i.type_desc = 'NONCLUSTERED'
ORDER BY t.name;