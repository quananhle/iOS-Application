
# StudIIT

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)

## Overview
### Description
Keeps track of information such as what classes students are in, their daily schedules, locations they like to study at (online is a viable location), hobbies and creates study groups for them based on factors such as class schedule, availability, school year, studying location preferences, shared interests, etc. Primary purpose of the application is to create convenient and effective study groups to help students reach their full academic potential, but is also great for meeting new friends with similar schedules and interests.

### App Evaluation
- **Category:** Social Networking / Academics
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer, similar as tinder or other similar apps. Functionality wouldn't be limited to mobile devices, however mobile version could potentially have more features and would attract a larger demographic, as many college students primarily utilize mobile devices when they are out-and-about.
- **Story:** Connects students from the same university and helps them create study groups easier. At the same time students will be able to find and to reserve a study place/spot where they can go with their new friends/study buddies.
- **Market:** Any eligible student individual could choose to use this app, and to keep it a safe environment, people would have to register with their university credentials.
- **Habit:** This app could be used as a tool for reserving a study place for an individual and also as an opportunity for one to pair with other students who have similar schedule, students with similar GPA and students who are taking the same classes.
- **Scope:** First we would start with listing all the available study spots on campus. We will be pairing people based on their similar studying schedule, and similar GPA which later may evolve into creating a study groups. Large potential for use with discord, slack and other social media apps. Since a lot of classes have their own class communication channels our app will ease  people to create a study sessions even in times of a pandemic.

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- [X] User logs in to access previous chats and preference settings

- [ ] User enters information such as their class schedule, GPA, upcoming assignments (although some of this may be pulled from school database i.e. myIIT, Blackboard IIT), clubs that they are a part of, times they are available to study

- [ ] Users are then matched with other users, and matches have a chat window to get to know each other, with the ability to confirm meeting members, times and locations or unmatch from a study group (Tinder Style).

- [ ] Profile pages for each user (showing what study group they were a part of, classes they are in)

- [ ] Settings (Accesibility, Notification, General, etc.)

**Optional Nice-to-have Stories**

- [ ] Allows users to request to be in a study group with a certain user(s)

- [ ] Study group history (to potentially match users with members of previous groups in the future)

- [ ] Group member ratings/karma system

- [ ] Page that allows groups to select custom study locations (perhaps off campus)


### 2. Screen Archetypes

* Login 
* Register - User signs up or logs into their account
   * Upon Download/Reopening of the application, the user is prompted to log in with their university credentials to gain access to their profile information to be properly matched with a group. 
* Messaging Screen - Chat for users to communicate (direct 1-on-1)
   * Allows students to message peers from their study group or to message those who are using the same study place/spot.
* Profile Screen 
   * Allows user to upload a photo and fill in information that is interesting to them and others. 
* Group Finder Screen.
   * Allows user to be able to choose fill in information such as their desired study locations (accounting for COVID, users also have an option to enter online as a location preference), class schedule, time preferences, etc. and be grouped with others to study with.  Also allows users to leave group and find a new group.
* Settings Screen
   * Lets people change language, and app notification settings.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Study spot finder page
* Group finder page
* Profile
* Settings

Optional:
* Study place availability
* Discover peers (Top Choices, messaging others or requesting study groups)
* Join study groups

**Flow Navigation** (Screen to Screen)
* Forced Log-in -> Account creation if no log in is available
* Study Spot Selection (Or Queue if Optional) -> Jumps to Chat
* Choose an option to study in a group or study alone
* Profile -> Text field to be modified. 
* Settings -> Toggle settings


## Wireframes

![Wireframes](Pictures/wireframes.jpg?raw=true "Main page")

## Schema 

#### Models

|Property              |Type    |Description       |
|---                   |---     |---               |
| UserID               |Integer | Unique user id number |
| Student              |Pointer |points to the user who is resrving a space or looking for a study group |           
|   Reservation        | Object |reservation that the user creates|
|   Message            | String |messages that the study group shares among its group members |                  
|  Rating              | String |comments/rate number that students leave after using a given space |  
| GPA                  | Double | Student's GPA |
| Clubs                | String | Clubs that a student is part of |
| Major                | String | Discipline which the student is studying |
| MatchRate            | Double | Percentage of compatibility between any two students |
| createdAt            |DateTime| When the reservation was created |
| updatedAt            |DateTime| When the reservation was last updated |

### Networking
#### List of network requests by screen

**Home messages screen**
	 	
|HTTP Verb      |Endpoint|Description       |
|---            |---     |---               |
|(CREATE/DELETE)|        |Create a new thread messages with a study group or delete an already existing one|

**Profile Screen**

|HTTP Verb      |Endpoint|Description       |
|---            |---     |---               |
|(READ/GET)     |        |Query logged in user object|
|(UPDATE/PUT)   |        |Update the profile image|
|(UPDATE/PUT)   |        |Update courses that the student is currently taking|
|(UPDATE/PUT)   |        |Update study groups that the student is currently part of|
|(UPDATE/PUT)   |        |Update GPA, Major, Clubs|

**Search a match screen**

|HTTP Verb      |Endpoint|Description       |
|---            |---     |---               |
|(READ/GET)     |        |Users information and compare it to the student's profile credentials|
|(UPDATE/PUT)   |        |Match result and propose a study group combinations|

**Reserve a study spot screen**

|HTTP Verb      |Endpoint|Description       |
|---            |---     |---               |
|(READ/GET)     |        |Available spots and free timeslots from a database|
|(UPDATE/SHOW)  |        |Study group member's availability and options for when is best to reserve a study spot|
|(UPDATE/CREATE)|        |Create a new reservation|
|(UPDATE/DELETE)|        |Delete an already existing reservation|
|(CREATE/POST)  |        |Put a rating or a comment about a given study spot|

### Week 1 progress
<p float="left">
<a href="Pictures/studIIT.gif"><img src="Pictures/studIIT.gif" height="750" width="350"></a>
<a href="Pictures/login.gif"><img src="Pictures/login.gif" height="750" width="350"></a>	
</p>

### Week 2 progress
<p float="left">
<a href="Pictures/tabbar.gif"><img src="Pictures/tabbar.gif" height="750" width="350"></a>
</p>


### Week 3 progress
<p float="left">
<a href="Pictures/tabbar.gif"><img src="Pictures/tabbar.gif" height="750" width="350"></a>
</p>


### Final Project
<p float="left">
<a href="Pictures/tabbar.gif"><img src="Pictures/tabbar.gif" height="750" width="350"></a>
</p>
