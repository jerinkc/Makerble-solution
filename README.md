A simple Rails application that consists of a receptionist portal and a doctor portal, which perform the following tasks:

1. A single login page for both portals.
2. Receptionists can register a new patient and perform CRUD operations.
3. Doctors can view registered patients and view a graph that represents the number of patients registered vs. days.

Make sure to run the command `rails db:seed` as it creates the users - doctor and receptionist.

## Roles

### Doctor
- Acts as a root user who can edit the credentials of receptionists and perform all actions that receptionists can do.
- Edit Receptionist credentials
- View graph

### Receptionist
- Can perform CRUD operations on patients.
- View graph

[Demo link](https://www.loom.com/share/1f19bda2971d4362af56c515e5061122?sid=f74035c2-f2ae-4de5-b474-4ca369d451e8)
