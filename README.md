This project is a database management system designed for the National Hockey League (NHL) to track teams, players, games, and related statistics. Built using SQL, the database provides an organized structure for storing information about NHL teams, their players, injury records, games played, and game results.

Table of Contents
Project Overview
Database Structure
Requirements
Setup and Installation
Usage
Queries
Contributing
License
Project Overview
The NHL Database Management System allows users to:

Store information about teams, including team names, cities, coaches, and captains.
Manage player data, including their names, positions, skill levels, and injury records.
Record games played between teams with details like dates and scores.
This project provides a foundation for an NHL-centric database that can be expanded with further queries and data analysis capabilities.

Database Structure
The database consists of the following tables:

Teams: Stores information on each NHL team, including the team's name, city, coach, and captain.
Players: Stores details for each player, including name, position, skill level, and a foreign key to their respective team.
Injury_Records: Tracks injury details for each player, including injury description and date.
Games: Records games played between two teams, with information on host and guest teams, date, and scores.
Entity-Relationship Diagram (ERD)
An ERD diagram is provided to visualize relationships among entities and the cardinality between them.

Requirements
SQL RDBMS: PostgreSQL, MySQL, or any SQL-compatible database system.
SQL Client: (Optional) pgAdmin, MySQL Workbench, or any SQL IDE.
Git: For cloning the project from GitHub.


