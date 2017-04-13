https://damp-journey-47764.herokuapp.com

Create project management system like Trello or Jira.
System operates with tasks and users.
User can have two roles: project manager and collaborator.
PM can create a team and invite a collaborator. Collaborator is a part of team only after approving of invitation.
PM can create the tasks and assign them to collaborators.
PM can delete and edit tasks.
Task has states: new(not assigned), open(assigned), in progress, done.
Task has types: bug fix, code, test.
When task is created it has a status 'new'. When task is assigned it changes status to 'open'.
PM can see all tasks of all collaborators. PM can't change task status.
Collaborator can see all his tasks.
Collaborator can change task status, but can only set 'in progress', 'done'.
