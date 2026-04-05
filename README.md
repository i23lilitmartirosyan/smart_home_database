# Smart Home Database System

This project represents the design and implementation of a smart home database system. The goal of the project is to model how different components of a smart home interact, including users, devices, sensors, rules, and events.

## Project Overview

The system simulates a smart home environment where:

- Users can access multiple homes
- Each home contains rooms and devices
- Devices have sensors that generate events
- Rules are used to automate actions based on sensor data
- Actions are executed automatically
- Execution logs track system behavior

## Database Structure

The database is designed using an ER diagram and converted into a relational schema.

Main entities include:

- User
- Home
- UserHome (relationship table)
- Room
- Device
- Sensor
- Event
- Rule
- Condition
- Action
- ExecutionLog

All relationships are implemented using primary and foreign keys to maintain data integrity.

## Technologies Used

- SQL Server (SSMS)
- SQL (DDL, DML, DQL)
- ER modeling

## Features

- Structured relational database design
- Support for rule-based automation
- Logging of system actions
- Data consistency using foreign keys
- Normalized schema (up to 3NF)

## Example Operations

- Insert new devices and sensors
- Update device status
- Delete old event records
- Query rules and execution logs

## Files Included

- SQL scripts for table creation
- Insert statements with sample data
- Queries (DML, DQL)
- ER diagram and relational schema

## 📎 Author

This project was developed as part of a university database course.
