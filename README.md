# Project Conversation History
  A simple Ruby on Rails application that allows users to:
  - Leave comments on a project
  - Change the status of a project
  - View the conversation history of comments and status changes

  ---

# Project Requirements
  Use Ruby on Rails to build a project conversation history. A user should be able to:

  - leave a comment
  - change the status of the project

  The project conversation history should list comments and changes in status.

# Clarification Questions and their Assumed Answers
  - User Roles and Permissions:-
      ```
      Question: Should all users be able to leave comments and change project statuses?
      Assumed Answer: Yes.
      ```
    
      ```
      Question: Should different user roles like admin or member, have varying permissions?
      Assumed Answer: Only admins can change the project status.
      ```
  - Project Statuses:-
      ```
      Question: What statuses can a project have (e.g Pending, in Progress, Cancelled, Completed)
      Assumed Answer: Pending, In Progress, On Hold, Completed.
      ```
  - Conversation History Details:-
      ```
      Question: Should the history show timestamps for comments and status changes?
      Assumed Answer: Yes.
      ```

      ```
      Questions: What information should be stored for status changes?
      Assumed Answer: Include which user made the comment or status change.
      ```
  - UI:-
      ```
      Question: How should order history be displayed? Chronologically or grouped by type?
      Assumed Answer: Chronologically in descending order.
      ```
  - Data Persistence:-
      ```
      Question: Should soft delete or archiving be supported for comments or project statuses?
      Assumed Answer: Not required for initial task.
      ```

# Screenshots of Working App
  - ![SS-1](https://github.com/write-arsalan-nawaz/project_conversation_history/blob/main/public/ss-1.png)
  - ![SS-1](https://github.com/write-arsalan-nawaz/project_conversation_history/blob/main/public/ss-2.png)
  - ![SS-1](https://github.com/write-arsalan-nawaz/project_conversation_history/blob/main/public/ss-3.png)
