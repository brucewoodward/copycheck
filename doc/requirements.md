# User Scenarios.

## Overview.

1. User connects without a unique key in the URL.
2. User connects with a unique key in the URL.
3. User interacts with the copy history.

### (SC1) User connects without a unique key


A text box is shown where the user is to enter their name. The grey out text “Your Name Here” is shown by default. 

Once clicking the submit button a unique key is generated and the user is redirected to the site with this URL appended (the user’s name is passed along). At this point the user is at scenario (SC2).

### (SC2) User connects with a unique key


The unique key is show at the top with some helpful message like “keep this” (IDK).

#### User’s Name.


If coming from SC1, the user’s name will be provided and will then be shown. Otherwise, a text box is shown for the user to enter their name.

#### Copy Text Area.


If there isn’t previous versions of the copy the text area will contain the greyed out text “Insert Copy Here”. Otherwise the previous version (by date) is shown in text area, ready to be edited.

Below the text box is the submit button.

#### Copy History.


If there are existing versions of the copy, a list of the previous versions is shown, which consists of;

1. The date that the copy was uploaded.
2. The name of the person who made the change.

Clicking on either the date or the name of the person shows the copy that was saved at that stage and takes the user to SC3.

### (SC3) Interacting with Copy History.

- If there are changes made after the version of the copy that is being shown, these entries appear before the text box, and entries that were save before appear below the text box.

- It is not possible to edit a previous copy, so there isn’t a submit button.