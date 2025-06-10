# Flutter Task Kanban Implementation (Best Experienced on a wider screen)




## A Kanban Flutter Implementation.


## Functionalities
- **Cross-Platform Support:** Full functionality across Android, iOS, and Web platforms


#### Project Management:
- **Create Projects:** Easily set up new projects to organize tasks.
- **Start New Projects:** Clear all tasks from the current board, archive completed tasks into the history section, assign a new Project ID, and begin with a fresh board.


#### Task Management:
- **Create Tasks:** Add tasks with essential details such as Title, Description, and Start Date (automatically assigned).
- **Validation:** Prevent task creation unless a project is initialized.
- **Edit Tasks:** Update task details like Title and Description.
- **Delete Tasks:** Remove tasks with a confirmation dialog to avoid accidental deletion.
- **Swipe to Delete:** Effortlessly delete individual tasks by swiping, with a dialog for confirmation.
- **Task Comments:** Add comments to tasks, view all comments, and see the total comment count.


#### Task Lifecycle Management:
- **Task Status:** Move tasks across boards and update their status (e.g., "To Do," "In Progress," "Done").
- **Start Task:** Begin tasks with an integrated timer.
- **End Task:** Stop the timer and capture the completion time.
- **Mark as Done:** Move tasks to the "Done" column and automatically record the completion date and time.
- **Task Not Started Alert:** Notify users when a task is marked as "Done" without being started, ensuring accountability.


#### Progress and History:
- **Track Progress:** Seamlessly move tasks between boards and update their details if needed.
- **Completed Task History:** View a detailed archive of all completed tasks, including comments and additional metadata.
- **Delete History:** Option to delete all archived tasks or individual ones, with confirmation dialogs for added safety.


#### User Interactions:
- **Confirmation Dialogs:** Prompt users before executing sensitive actions like task or history deletion.
- **Detail Insights:** View and update task details while moving them across boards for better tracking and management.


#### Made Use Of:
- Clean Architecture
- Injectable and Get_it for dependency injection
- Go Router
- BLoC
- Auto Asset Generation
- Json Serialization
- Dio and Retrofit
- Flutter Secure Storage and Shared Preference
- Freezed and Json Annotation
- Equatable and Rxdart
- Mockito and Bloc_test
- Intl and loader_overlay
- AND OTHERS


#### Extra:
- Onboarding and Launch Icons
- Network Notification

#### APK, SCREENSHOTS AND VIDEO:
- [Use this link to access these resources on Google Drive](https://drive.google.com/drive/folders/1JWwmXxuc9o039IuOrM0f9_YZ8aMj-pFO?usp=sharing)


OR
#### Screenshots:
- The screenshots are inside a folder called screenshots here on this [Repository](https://github.com/Atuoha/todoist_mock/tree/master/screenshots)

#### APK:
- The apk is inside a folder called APK here on this [Repository](https://github.com/Atuoha/todoist_mock/tree/master/APK)

#### RUN LOCALLY:

- To run locally, run flutter pub get and choose platform supports both Web, iOS and Android 
- creating a token in [Todoist](https://app.todoist.com/app/settings/integrations/developer) through this [guide:](https://todoist.com/help/articles/find-your-api-token-Jpzx9IIlB)  and store it inside .env file (create a new one) using API_TOKEN = [YOUR TOKEN] 

**Create an .env file and add this:**
API_TOKEN=[TOKEN KEY] 


**IF YOU GET A 403 STATUS ERROR - FORBIDDEN, KNOW THAT YOU HAVE EXCEEDED YOUR LIMIT:**
