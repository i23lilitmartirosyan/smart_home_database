EXEC sp_GetDevicesByHome @HomeId = 4;
GO

EXEC sp_GetDangerousEvents;
GO

EXEC sp_UpdateRuleStatus @RuleId = 5, @NewStatus = 'inactive';
GO

EXEC sp_InsertEvent @SensorId = 6, @EventType = 'Smoke', @Value = '120', @Source = 'sensor';
GO

EXEC sp_GetExecutionHistoryByRule @RuleId = 10;
GO