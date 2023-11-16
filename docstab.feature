Feature: Docs-tab
    Evaluating the "Docs" tab using appropriate scenarios and relevant conditions.

  Scenario: Visibility of Docs tab
    Docs tab should be visible on the screen after creating the Dome
    Given Launch the application And click on Domes
    When Create the new Dome using "Create a new Dome" option
    And Pick the template name it as
      """
      Daily Tasks
      """
    And save the Dome
    Then Docs tab should be visible under the Created Dome

  Scenario: Navigate to the Docs tab through single click
    User should be able to navigate to the Docs tab through the single click
    Given Launch the application
    And Click on Domes
    When user clicks on recently created Dome as
      """
      Daily tasks
      """
    And user clicks on Docs tab through Single Click
    Then Docs tab should be displayed

  Scenario: Navigate to the Docs tab through Swipe
    User should be able reach the Docs tab through swiping
    Given Launch the application
    And Click on Domes
    And user clicks on recently created Dome as
      """
      Daiy tasks
      """
    When user should be able to reach the Docs tab
    Then Docs Section should be dispplayed

  Scenario: Visibility Of "Info" tab with the icon on the Docs tab
    "When user navigate to the Docs tab the Info section should be visible by default with the "i" icon"
    Given Launch the Dome app
    And Click on Domes
    And user clicks on recently created Dome
    When user clicks on Docs tab through Single Click
    Then The info tab should be displayed with the "i" icon

  Scenario: Docs tab is editable
    User should be able to edit the "Docs tab" as per the needs
    Given Launch the application And click on Domes
    And Click on recently created Dome
    And Click on Docs tab
    And Click on Docs tab info
    And Click on settings icon
    When The Docs tab Page should be displayed
    And User should be able to rewrite the existing name with the new name
    Then Click on Save Button and the changes should be visible on the screen.

  Scenario: Verify Visibility and Clickability of Add new document option
    Add new document option should be visible and clickable to the user
    Given Launch the application And click on Domes
    And Click on recently created Dome and open it
    And Navigate to the Docs tab
    When Add new document option should be visible with the icon
    And Click on Add new document option
    Then Document menu should be displayed

  Scenario: Checking Visibility of Menu Options when Adding a New Document
    The user's ability to see menu options like Gallery, Video, Camera, Contacts, Files, and Location when they click on "Add New Document." Each option should be visible and lead to the corresponding functionality when selected.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    And the following menu options should be visible:
      """
      Gallery
      Video
      Camera
      Contacts
      Files
      Location

      """
    When the user selects the "Gallery" option
    Then the application should open the device's gallery for selecting an image
    When the user selects the "Video" option
    Then the application should open the device's video library for selecting a video
    When the user selects the "Camera" option
    Then the device's camera should be activated for capturing a new image or video
    When the user selects the "Contacts" option
    Then the application should provide access to the Dome's contact list for selecting a contact
    When the user selects the "Files" option
    Then the application should open the device's file explorer for selecting a file
    When the user selects the "Location" option
    Then the application should prompt the user to share their location or select a location

  Scenario: Uploading a New Document via Gallery by Editing an Image from Device Folders
    uploading a new document via the "Gallery" feature by selecting an image from device folders and editing it before uploading.
    Given Launch the application And click on Domes
    And selects the option to add a new document
    When the user accesses the "Gallery" feature
    Then the application should open the device's file explorer
    And the user should be able to navigate to and choose an image from the available folders on the device
    When the user selects an image
    And chooses to edit the selected image
    Then the image editing tools and options should become available
    And the user should be able to make desired edits to the image
    When the user finishes editing the image
    And saves the changes
    Then the edited image should be uploaded as a document in the application
    And the uploaded image should be visible in the Docs tab

  Scenario: Uploading a New Document via Gallery by Selecting an Image from Device Folders
    adding a new document via the "Gallery" feature by selecting an image from the device's folders
    Given Launch the application And click on Domes
    And selects the option to add a new document
    When the user navigates to the "Gallery" feature
    Then the application should open the device's file explorer
    And the user should be able to browse and select an image from the available folders on the device
    When the user chooses an image from one of the folders
    And confirms the selection
    Then the selected image should be uploaded as a document in the application

  Scenario: Uploading a New Document via Gallery by Selecting and Editing an Image from the Camera
    The process of uploading a new document via the "Gallery" feature by selecting and editing an image captured from the device's camera.
    Given Launch the application And click on Domes
    And selects the option to create a new document
    When the user accesses the "Gallery" feature
    Then the application should prompt the user to choose an image source
    When the user selects the "Camera" option
    And activates the camera to capture an image
    Then the user should be presented with the captured image
    When the user chooses to edit the captured image
    And the image editing tools and options become available
    Then the user should be able to make desired edits to the image
    When the user finishes editing the image
    And saves the changes
    Then the edited image should be uploaded as a document in the Docs tab
    And the user should see the newly uploaded document in Docs tab

  Scenario: Uploading a New Document via Gallery by Selecting HD/ORIG Size of an Image from Device Folders
    The process of uploading a new document via the "Gallery" feature by selecting the HD/ORIG size of an image from device folders.
    Given Launch the application And click on Domes
    And selects the option to add a new document
    When the user accesses the "Gallery" feature
    Then the application should open the device's file explorer
    And the user should be able to browse and select an image from the available folders on the device
    When the user chooses an image from one of the folders
    And selects the HD/ORIG size option for the image
    Then the selected image in its highest quality (HD/ORIG size) should be displayed
    When the user confirms the selection
    Then the HD/ORIG size image should be uploaded as a new document in the application
    And the user should see the newly uploaded document in Docs tab

  @Bug @defect
  Scenario: Limiting the Number of Images Uploaded via Gallery
    The user is unable to upload an unlimited number of images via the Gallery by implementing a limit and providing appropriate feedback when the limit is exceeded. This helps maintain control over the number of images uploaded.
    Given Launch the application And click on Domes
    When User selects the option to add a new document
    And the user accesses the "Gallery" feature
    Then the application should open the device's file explorer
    And the user should be able to browse and select images from the available folders on the device
    When the user attempts to select more than a specified maximum number of images (e.g., 25)
    Then the application should display a notification or error message indicating that the user has exceeded the allowed limit
    And prevent further selection of images beyond the limit
    When the user confirms the selection of the allowed number of images
    Then only the selected images should be uploaded as new documents in the application
    And the user should receive a confirmation message or see the newly uploaded documents in Docs tab

  Scenario: Pausing and Resuming the Upload of a File
    The user's ability to pause and resume the uploading of a file. It covers the pausing, resuming, and successful completion of the upload, ensuring that the file is accessible once the upload is finished.
    Given Launch the application And click on Domes
    And Click on Add new document option
    When the user initiates the process to upload a large file
    Then the application should start uploading the file
    And a  button should be visible during the upload process
    When the user clicks on the "Pause" button
    Then the uploading of the file should pause immediately
    And the "Resume" button should become visible
    And the application should indicate that the upload has been paused
    When the user decides to resume the upload
    And clicks on the "Resume" button
    Then the application should continue uploading the file from where it was paused
    And the "Pause" button should become visible again
    And the user should receive a confirmation that the upload has resumed
    When the upload is complete
    Then the uploaded file should be accessible in the Docs tab

  Scenario: Deleting a File While Uploading
    The user's ability to delete a file while it's being uploaded. The user can initiate the cancellation of the file upload, and upon confirmation, the upload process is halted, and the file is removed from the queue.
    Given Launch the application And click on Domes
    And clicks on Add a new document
    When the user initiates the process to upload a file
    Then the application should start uploading the file
    And a  button should be visible during the upload process
    When the user clicks on the "Delete" button
    Then the uploading of the file should stop immediately
    And the file should be removed from the upload queue
    And the user should receive a confirmation message indicating that the upload has been canceling and the file is deleting
    When User clicks on Delete
    Then the file should not be present in the application

  Scenario: Viewing, Sharing, and Rotating a Successfully Uploaded Image File
    The user's ability to view, share, and rotate an image file after a successful upload
    Given Launch the application And click on Domes
    And click add new document
    When the user successfully uploads an image file
    Then the application should confirm the successful upload.
    And the uploaded image file should be accessible in the Docs tab
    When the user views the uploaded image
    Then the image should be displayed in a viewer within the application
    And the user should be able to zoom in, zoom out, and navigate through the image
    When the user chooses to share the image
    Then the application should provide sharing options (e.g., email, social media, messaging,Dome etc..)
    And the user should be able to share the image via their preferred method
    When the user decides to rotate the image
    And selects the "Rotate" option
    Then the image should be rotated by 90 degrees (clockwise or counterclockwise)
    And the user should be able to save the rotated version of the image in the gallery

  Scenario: Verifying Features in the Dropdown Menu for an Uploaded Image
    The user's ability to access and utilize the dropdown menu for an uploaded image. The dropdown menu includes features such as forwarding, sharing as a link, renaming, downloading, and deleting the image.
    Given Launch the application And click on Domes
    When the user successfully uploads an image file
    Then the application should confirm the successful upload
    And the uploaded image file should be visible in the Docs tab
    When the user clicks on the uploaded image dropdown
    Then a dropdown menu should appear with the following features with the suitable logo: Forward, Share as Link, Rename, Download,Delete
    Then the application should allow the user to forward the image via email or another method
    When the user selects the "Share as Link" option from the dropdown menu
    Then the application should generate a shareable link for the image
    And provide the user with the link or sharing options
    When the user selects the "Rename" option from the dropdown menu
    Then the user should be able to edit and save a new name for the image
    When the user selects the "Download" option from the dropdown menu
    Then the image file should be downloaded to the user's device
    When the user selects the "Delete" option from the dropdown menu
    Then the application should display a confirmation prompt asking the user to confirm the deletion
    And if the user confirms, the image should be deleted from the Docs tab
    And if the user confirms, the image should be deleted from the gallery

  @Bug
  Scenario: Uploading a Single Video via "Add New Document" with Confirmation
    The user's ability to upload a single video via the "Add New Document" option by confirming the upload/open action. It includes steps for selecting the video, confirming the upload, and verifying the successful upload and accessibility of the video within the application.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Video" option
    Then the application should open the device's video library or file explorer for selecting a video
    Then the user should be able to browse and select a single video from their library
    And confirms the upload/open action
    And the uploaded video should be accessible in the Docs tab
    When the user chooses to upload the selected video
    Then the selected video should be uploaded as a new document in the application

  Scenario: Uploading a Video via Google Drive
    The user's ability to upload a video via Google Drive. The steps include selecting "Video," connecting to Google Drive, selecting the video, and verifying the successful upload and accessibility of the video within the application.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document
    When the user selects the "Video" option
    Then the application should provide a list of file storage options
    And the user should be able to select "Google Drive" from the list
    When the user connects their Google Drive account, if not already connected
    Then the application should prompt the user to log in to their Google account and grant necessary permissions
    And upon successful connection, the user should have access to their Google Drive files
    When the user navigates to their Google Drive files
    And selects the video file they want to upload
    Then the selected video should be uploaded as a new document in the application
    And the user should be able to access the uploaded video in the designated location within the application

  @Bug
  Scenario: Uploading Multiple Video Files with Limited Selection
    The user's ability to upload multiple video files with a limited selection. It includes steps for selecting multiple videos, confirming the upload, and verifying the successful upload and accessibility of each video within the application.
    Given Launch the application And click on Domes
    When the user initiates the process to add new documents
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Video" option
    Then the application should open the device's video library for selecting videos
    And the user should be able to browse and select multiple video files from their library, but with a specified maximum limit (e.g., 3 or 10 videos)
    When the user chooses to upload the selected videos
    And confirms the upload/open action
    Then the selected videos should be uploaded as new documents in the application
    And the user should be able to access all the uploaded videos in the designated location within the application

  @Bug
  Scenario: Restricting the Addition of Non-Video Files via Google Drive
    The application properly restricts the file types to video files when the user selects the "Video" option via Google Drive and provides an error message or warning for non-video file selections.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document.
    Then the application should open a menu with options for adding various types of content.
    When the user selects the "Video" option.
    Then the application should provide access to their Google Drive account.
    When the user navigates to their Google Drive files.
    And selects a file that is not a video file (e.g., a PDF or PNG file).
    Then the application should display an error message or warning stating that only video files are allowed for upload.
    And it should prevent the user from selecting or uploading non-video file types.
    When the user selects a valid video file.
    Then the selected video should be uploaded as a new document in the application.
    And the user should be able to access the uploaded video in the designated location within the application.

  Scenario: Uploading an Image via "Add New Document" Using the Camera Option
    The user's ability to select the "Camera" option via "Add New Document" to capture and upload an image. It includes steps for activating the camera, capturing the image, confirming the capture, and verifying the successful upload and accessibility of the image within the application.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Camera" option
    Then the device's camera should be activated for capturing a new image
    And the user should be able to take a photo using the camera
    When the user captures the image
    And confirms the capture
    Then the captured image should be uploaded as a new document in the application
    And the user should be able to access the uploaded image in the designated location within the application

  @Bug
  Scenario: Shooting and Uploading a Video via "Add New Document" Using the Camera Option
    The user's ability to select the "Camera" option via "Add New Document" to shoot and upload a video. It includes steps for activating the camera, recording the video, confirming the recording, and verifying the successful upload and accessibility of the video within the application.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Camera" option
    Then the device's camera should be activated for shooting a new video
    And the user should be able to record a video using the camera
    When the user finishes recording the video
    And confirms the recording
    Then the recorded video should be uploaded as a new document in the application
    And the user should be able to access the uploaded video in the designated location within the application

  Scenario: Displaying Uploaded Files in the "Docs" Tab with Metadata
    verify that uploaded files appear in the "Docs" tab with the specified metadata and that users can access and interact with the uploaded files as needed. This ensures proper display and functionality within the application's "Docs" tab.
    Given Launch the application And click on Domes
    When the user uploads a file (e.g., contact,file,location, image, or video)
    Then the uploaded file should be visible in the "Docs" tab
    And the following metadata should be displayed for the uploaded file:
      """
      User Name (or user identifier)
      File Size
      Day of Upload
      Time of Upload
      """
    When the user clicks on the uploaded file in the "Docs" tab
    Then a detailed view of the file should open
    And the file's metadata, including user name, file size, day, and time of upload, should be visible in the detailed view
    And the user should be able to access or interact with the file as intended (e.g., view, rename,forward, download, print, Delete, or share as link ).

  Scenario: Adding Contacts via "Add New Document" Using the Contact Option
    The user's ability to select the "Contacts" option via "Add New Document" to add contacts available within the Dome. It includes steps for accessing the contact list, selecting contacts, adding them to a document, and confirming the addition within the application.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list within the Dome
    And the user should be able to browse and select one or more contacts from their contact list
    When the user chooses to add the selected contacts
    Then the selected contacts should be added as part of the new document
    And the user should be able to view or manage the added contacts within the document or in their contact list.

  Scenario: Adding Contacts by Typing via "Add New Document" Using the Contact Option
    The user's ability to select the "Contacts" option via "Add New Document" and add contacts by typing and searching through the search tab. It includes steps for accessing the contact list, searching for specific contacts, selecting them, adding them to a document, and confirming the addition within the application.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And display a search bar or search tab for typing and searching for specific contacts
    When the user types in the search bar to search for specific contacts
    Then the application should dynamically filter the contact list based on the search query
    And the user should be able to select one or more contacts from the filtered results
    When the user chooses to add the selected contacts
    Then the selected contacts should be added as part of the new document
    And the user should be able to view or manage the added contacts within the document or in their contact list.

  Scenario: Adding Contacts by Voice Search via "Add New Document" Using the Contact Option
    The user's ability to select the "Contacts" option via "Add New Document" and add contacts by using a voice search tab. It includes steps for accessing the contact list, initiating a voice search, selecting contacts, adding them to a document, and confirming the addition within the application.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And display a voice search tab or button for initiating a voice search for specific contacts
    When the user taps the voice search tab or button
    Then the application should activate the voice recognition feature
    And the user should be able to speak the names or keywords of specific contacts they want to add
    When the user completes the voice search
    Then the application should process the voice input and identify the contacts based on the spoken names or keywords
    And the user should be able to select one or more contacts from the results
    When the user chooses to add the selected contacts
    Then the selected contacts should be added as part of the new document
    And the application should confirm the successful addition of the contacts with a notification
    And the user should be able to view or manage the added contacts within the document or in their contact list.

  Scenario: Adding Contacts by Random Search via "Add New Document" Using the Contact Option
    The user's ability to select the "Contacts" option via "Add New Document" and add contacts by searching randomly. The application should display contacts available in the "Dome," "From My Network," and "Global Search" sections and allow the user to add them to the document.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And display a search bar or search tab for typing and searching for specific contacts
    When the user starts typing randomly in the search bar
    Then the application should dynamically filter the contact list based on the random search query
    And display contacts available in three sections:
      """
      1. "Dome" - Contacts within the user's Dome or immediate network
      2. "From My Network" - Contacts from the broader network the user belongs to
      3. "Global Search" - Contacts that match the search query globally
      """
    When the user selects one or more contacts from any of the displayed sections
    Then the selected contacts should be added as part of the new document
    And the user should be able to view or manage the added contacts within the document.

  Scenario: Adding Contacts by Random Search via "Add New Document" Using the Contact Option with "Load More Results"
    The user's ability to select the "Contacts" option via "Add New Document" and add contacts by searching randomly. The application should display contacts available in the "Global Search" section, allow the user to load more results, and provide the available results from the database while displaying a loading indicator during the fetch process.
    Given Launch the application And click on Domes
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And display a search bar or search tab for typing and searching for specific contacts
    When the user starts typing randomly in the search bar
    Then the application should dynamically filter the contact list based on the random search query
    And display contacts available in the "Global Search" section
    When the user clicks on the "Load More Results" option
    Then the application should display a loading indicator to indicate that it's fetching additional results
    And continue to load and display more results from the database
    When the user selects one or more contacts from the displayed results
    Then the selected contacts should be added as part of the new document
    And the user should be able to view or manage the added contacts within the document.

  Scenario: Displaying Contacts with First and Last Name Initials and Counts in Various Sections
    The user's ability to select the "Contacts" option via "Add New Document" and add contacts by searching randomly or with specific queries. The application should display existing contacts with their first and last name initials and counts in the "Global Search," "From My Network," and "Dome" sections, allowing the user to add contacts to the document.
    Given Launch the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And display a search bar or search tab for typing and searching for specific contacts
    When the user starts typing a specific or random search query in the search bar
    Then the application should dynamically filter the contact list based on the search query
    And display contacts available in the following sections:
      """
      1. "Global Search" [X Contacts]
      > Display the contacts with their first and last name initials
      >Show the count of contacts found in the global search

      2."From My Network" [Y Contacts]
      > Display the contacts with their first and last name initials
      >Show the count of contacts found in the user's network

      3. "Dome" [Z Contacts]
      >Display the contacts with their first and last name initials
      >Show the count of contacts found within the user's Dome
      """
    When the user selects one or more contacts from any of the displayed sections
    Then the selected contacts should be added as part of the new document
    And the user should be able to view or manage the added contacts within the document.

  Scenario: Adding Contacts and Viewing Contact Pgae with Options
    The user's ability to select the "Contacts" option via "Add New Document," search for contacts or Domes, and navigate to the Contact page with various options and features, including texting options, a hamburger menu, and search content options. Users can interact with these elements to perform various actions related to the selected contact or Dome.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And display a search bar or search tab for typing and searching for specific contacts or Domes
    When the user starts typing randomly or enters a specific search query in the search bar
    Then the application should dynamically filter the contact list based on the search query
    And display contacts or Domes available in the search results
    When the user clicks on a specific contact or Dome from the search results and uplods as a document
    And Clicks to view the contact
    Then the application should display the Contact page for the selected contact or Dome
    And the Contact page should include the following options:
    When the user clicks on any of the above options
      """
      1.Chat(with a default Info icon)
      2.Contact
      3.Payments
      4 Documents
      """
    Then the application should navigate the user to the respective functionality (e.g., chat, contact details, payments, or documents)
    And the Contact page should also include the following features:
      """
      Texting options with text and voice search
      A hamburger menu in the top right corner
      Search content options located next to the hamburger menu in the center
      Contact Name
      First and Last name of the initial
      Back option

      """
    And the user should be able to interact with these features to perform actions such as messaging, accessing contact details, making payments, or viewing documents related to the contact or Dome.

  Scenario: Uploading Contacts, Viewing Contacts, and Chatting
    The user's ability to upload contacts through "Add New Document," view the uploaded contacts, and initiate chat with the contacts using text or voice. The user can confirm sending messages to the selected contacts, and the chat history is maintained within the Contact page for ongoing communication.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload contacts
    When the user uploads contacts
    Then the uploaded contacts should be added as part of the new document
    And the user should be able to view the uploaded contacts
    When the user selects a specific contact from the uploaded contacts
    Then the application should display the Contact page for the selected contact
    And the Contact page should include options for text and voice chat
    When the user initiates a chat with the selected contact using text or voice
    And composes a message or voice message
    Then the user should have the option to confirm sending the message
    And the application should deliver the message to the selected contact
    And the chat history should be visible within the Contact page
    And the user should be able to continue the chat as needed

  Scenario: Uploading Contacts and Chatting with Limited Attempts before user appproval
    The user's ability to upload contacts, initiate chat, and limit chat attempts before the user's approval.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload one or more contacts as part of the new document
    When the user successfully uploads the contacts
    Then the uploaded contacts should be visible in the application
    And the user should be able to access the uploaded contacts for various actions, including chat
    When the user clicks on a contact to initiate a chat
    Then the application should open a chat interface
    And the user should be able to send text or voice messages to the contact
    And there should be a limit of 5 attempts for sending messages
    When the user reaches the limit of 5 attempts
    Then the application should display an error message, such as "You can resume chatting after you are connected."
    And it should prevent further messaging until the user is approved the request

  Scenario: Uploading Contacts, Chat Actions, and Chat History
    The user's ability to upload contacts, initiate chat, and perform various actions within the chat interface. The chat history should accurately reflect the actions taken on messages, including editing, forwarding, replying, copying, sharing, and deleting.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload one or more contacts as part of the new document
    When the user successfully uploads the contacts
    Then the uploaded contacts should be visible in the application
    And the user should be able to access the uploaded contacts for various actions, including chat
    When the user initiates a chat with an uploaded contact
    Then the application should open a chat interface
    And allow the user to send text or voice messages
    And the user should be able to perform the following actions within the chat interface:
      """
      Reply: The user can reply to a specific message in the chat.

      Copy: The user can copy the text of a message.

      Forward: The user can forward a message to another contact or group.

      Share: The user can share a message with other applications or users.

      Edit: The user can edit their own messages.

      Delete: The user can delete their own messages.


      """
    When the user performs any of the above actions
    Then the chat history should display the actions taken (e.g., "Edited," "Forwarded," "Replied," "Copied," "Deleted") alongside the respective messages
    And the user should be able to view the chat history and see the actions performed on each message.

  Scenario: Adding Contacts with Automatic Connection Request and Viewing Uploaded Contact
    The user's ability to add contacts via "Add New Document," automatically send a connection request when uploading a contact, and view the uploaded contact. The contact interface should inform the user of the sent connection request and allow them to cancel the request if needed.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload one or more contacts as part of the new document
    When the user selects and uploads a contact
    Then the application should automatically send a connection request to the uploaded contact
    And the uploaded contact should receive the connection request notification
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And the contact interface should include a message stating, "You have sent a connection request" to inform the user of the sent request
    When the user clicks on the "Cancel" button
    Then the application should confirm the cancellation of the connection request
    And notify the user that the request has been canceled

  Scenario: Uploading and Viewing Contacts with Connection Request Approval
    The user's ability to add contacts via "Add New Document" ,when uploading a contact, and view the uploaded contact. The contact details are displayed only when the connection request is approved by the uploaded contact.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload one or more contacts as part of the new document
    When the user selects and uploads a contact
    Then the application should automatically send a connection request to the uploaded contact
    And the uploaded contact should receive the connection request notification
    When the uploaded contact receives the connection request notification
    Then the uploaded contact has the option to either approve or reject the connection request
    When the uploaded contact approves the connection request
    Then the application should notify the user that the connection request has been approved
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And the contact interface should include a "Contact" tab
    When the user clicks on the "Contact" tab
    Then the application should display the contact details only because the connection request has been approved
    And the user should be able to view and interact with the contact details.

  Scenario: Uploading and Viewing Contacts with Easily Accessible Request Payment Button
    The ease of accessibility for the "Request Payment" button within the "Payment" tab in the contact interface. The button should be prominently displayed and readily accessible for the user to initiate a payment request to the contact.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload one or more contacts as part of the new document
    When the user selects and uploads a contact
    Then the application should notify the user that the contact has been uploaded
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And the contact interface should include a "Payment" tab
    When the user clicks on the "Payment" tab
    Then the application should display the payment page for the contact
    And on the payment page, there should be a prominently displayed and easily accessible "Request Payment" button
    And the "Request Payment" button should be easily accessible and clickable, allowing the user to initiate a payment request to the contact.

  Scenario: Initiating a Payment Request with Payment Details
    The process of initiating a payment request with payment details, including a description, amount, and the ability to attach related documents. The "Request Payment" button becomes enabled only after the user enters values into the required text fields, ensuring that the payment request is complete before submission.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload one or more contacts as part of the new document
    When the user selects and uploads a contact
    Then the application should notify the user that the contact has been uploaded
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And the contact interface should include a "Payment" tab
    When the user clicks on the "Payment" tab
    Then the application should display the payment page for the contact
    And on the payment page, there should be a prominently displayed and easily accessible "Request Payment" button
    And when the user clicks on the "Request Payment" button
    Then the application should display a dialog with the following elements:
      """
      "What is the payment for?" text field
      A camera icon to attach related documents
      An "Amount" text field
      A "Request Payment" button

      """
    And the "Request Payment" button should be initially disabled
    When the user enters a description for the payment in the "What is the payment for?" text field
    And enters an amount in the "Amount" text field
    Then the "Request Payment" button should enable
    And the user should be able to click the "Request Payment" button to initiate the payment request.

  @Bug
  Scenario: Limiting Amount Value in Payment Request
    The amount text field in the payment request adheres to the limited amount value set by the bank's rules and regulations. The application should validate and restrict the amount entered by the user, providing feedback if the amount does not comply with the specified rules.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    When the user selects and uploads a contact
    Then the application should notify the user that the contact has been uploaded
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And the contact interface should include a "Payment" tab
    When the user clicks on the "Payment" tab
    Then the application should display the payment page for the contact
    And on the payment page, there should be a prominently displayed and easily accessible "Request Payment" button
    And when the user clicks on the "Request Payment" button
    Then the application should display a dialog with the following elements:
      """
      "What is the payment for?" text field
      A camera icon to attach related documents
      An "Amount" text field
      A "Request Payment" button

      """
    And the "Request Payment" button should be initially disabled
    When the user enters a description for the payment in the "What is the payment for?" text field
    And attempts to enter an amount in the "Amount" text field
    Then the application should validate the entered amount based on bank rules and regulations
    And accept only a limited amount value based on the specified rules
    And the "Request Payment" button should remain disabled if the entered amount does not comply with the rules
    And the user should receive feedback regarding the amount validation.

  Scenario: Returning to Payments Tab After Canceling Payment Request
    The user can return to the Payments tab after canceling the payment request and that any entered payment details are discarded. The "Cancel" option provides a way for the user to go back to the previous state in the Payments tab without proceeding with the payment request.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload one or more contacts as part of the new document
    When the user selects and uploads a contact
    Then the application should notify the user that the contact has been uploaded
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And the contact interface should include a "Payment" tab
    When the user clicks on the "Payment" tab
    Then the application should display the payment page for the contact
    And on the payment page, there should be a prominently displayed and easily accessible "Request Payment" button
    And when the user clicks on the "Request Payment" button
    Then the application should display a dialog with the following elements:
      """
      "What is the payment for?" text field
      A camera icon to attach related documents
      An "Amount" text field
      A "Request Payment" button
      A "Cancel" button
      """
    And the "Request Payment" button should be initially disabled
    When the user enters a description for the payment in the "What is the payment for?" text field
    And enters an amount in the "Amount" text field
    And decides to cancel the payment request
    Then the user should be able to click the "Cancel" button
    And clicking the "Cancel" button should return the user to the Payments tab within the contact interface
    And any entered payment details should be discarded
    And the "Request Payment" button should remain disabled.

  Scenario: Exploring Additional Options in the Contact Interface
    The user's ability to explore additional options within the contact interface, including options like "Add to homescreen," "QR code," "Forward," "Share," and "Report," each with its respective icon. These options provide the user with various ways to interact with the uploaded contact.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload one or more contacts as part of the new document
    When the user selects and uploads a contact
    Then the application should notify the user that the contact has been uploaded
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And user decides to explore additional options
    Then the user can click on the hamburger menu icon or perform a left swipe gesture
    And the application should display a menu with the following options:
      """
      "Add to homescreen" with an icon
      "QR code" with an icon
      "Forward" with an icon
      "Share" with an icon
      "Report" with an icon

      """
    And each option should be represented by its respective icon
    And the user can interact with these options to perform actions such as adding the contact to the homescreen, generating a QR code, forwarding the contact, sharing the contact, or reporting the contact.

  Scenario: Adding Contact to Home Screen
    The user's ability to add the contact to the home screen after exploring the "Add to homescreen" option. The user can add the contact icon to the home screen multiple times by dragging it, providing convenient and quick access to the contact's information.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload one or more contacts as part of the new document
    When the user selects and uploads a contact
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And decides to explore additional options
    And the application should display a menu with the following options:
      """
      "Add to homescreen" with an icon
      "QR code" with an icon
      "Forward" with an icon
      "Share" with an icon
      "Report" with an icon
      """
    And the user can interact with these options to perform actions such as adding the contact to the home screen
    When the user clicks on "Add to homescreen"
    Then the application should allow the user to add the respective contact icon to the home screen
    And the user should be able to add the contact icon to the home screen one or more times by dragging the contact icon on the home screen
    And the contact icon on the home screen should represent the contact and provide quick access to the contact's information.

  Scenario: Adding Contact to Home Screen with "Add Automatically" Option
    The user's ability to add a contact to the home screen by clicking on the "Add Automatically to Home Screen" option. This option streamlines the process by automatically adding the contact icon to the home screen for convenient and quick access to the contact's information.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    And allow the user to upload one or more contacts as part of the new document
    When the user selects and uploads a contact
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And decides to explore additional options
    Then the user can click on the hamburger menu icon or perform a left swipe gesture
    And the application should display a menu with the options
    When the user clicks on "Add to Home Screen"
    And then clicks on "Add Automatically" option
    Then the application should add the respective contact to the home screen automatically
    And a contact icon representing the contact should appear on the home screen for quick access
    And the user should not need to manually drag the contact icon to the home screen; it should be added automatically.

  Scenario: Inviting Others to Connect via QR Code
    The user's ability to invite others to connect via a QR code. The user can display the QR code, share it, save it to the gallery, and scan QR codes to establish connections with others.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    When the user selects and uploads a contact
    And the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And decides to explore additional options
    Then the user can click on the hamburger menu icon or perform a left swipe gesture
    Then the user clicks on the "QR CODE" option
    And the application should display a QR code on the screen
    And below the QR code, there should be text that reads "Scan the above QR code to connect!"
    And there should be options visible below the QR code, including:
      """
      "Share QR Code" with an icon
      "Save QR Image to Gallery" with an icon
      "Scan QR Code to Connect" with an icon
      """
    And the user should be able to share the QR code with others
    And save the QR image to the gallery
    And scan QR codes to connect with others.

  @Bug
  Scenario: Sharing the Contact via Hamburger Menu
    The "Share" option in the hamburger menu is clickable and allows the user to share the contact with others through various sharing methods.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    Then the application should provide access to the user's contact list
    When the user selects and uploads a contact
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    Then the user can click on the hamburger menu icon
    And the application should display a menu with options, including: "Share"
    And when the user clicks on the "Share" option
    Then the application should allow the user to share the contact with others
    And the user should be able to send the contact via various sharing methods, such as messaging apps, email, and social media.

  Scenario: Forwarding Tabs via Hamburger Menu
    the "Forward" option in the hamburger menu is clickable and allows the user to forward tabs to others, either from the available Domes or by dynamically searching for contacts.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    And the user selects and uploads a contact
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And decides to forward the contact to others
    Then the user can click on the hamburger menu icon
    And the application should display a menu with options, including:"Forward" with an icon
    And when the user clicks on the "Forward" option
    Then the application should allow the user to select contacts or Domes from the available list
    And the user should be able to forward the tab to selected contacts or Domes
    And the "Forward" option should be clickable
    And the user can search dynamically for contacts or Domes to forward the tab by selecting the available tabs in the list.

  Scenario: Reporting an Issue via Hamburger Menu
    The user's ability to report an issue by clicking on the "Report" option in the hamburger menu. The application should provide a way for the user to describe the issue they are experiencing and submit the report for further investigation or resolution.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Contacts" option
    And allow the user to upload one or more contacts as part of the new document
    When the user clicks on "View" or accesses the uploaded contact
    Then the application should display a contact interface for the uploaded contact
    And decides to report an issue
    Then the user can click on the hamburger menu icon
    And the application should display a menu with options, including:"Report" with an icon
    And when the user clicks on the "Report" option
    Then the application should allow the user to report an issue
    And provide a form or interface where the user can describe the issue they are experiencing
    And the user should be able to submit the issue report.

  Scenario: Uploading Various Types of Files via "Files" Option
    The user's ability to click on the "Files" option via "Add New Document" and upload various types of files, ensuring that the application allows for flexibility in file type selection, including text, document, spreadsheet, presentation, image, audio, video, and archive formats.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Files" option
    Then the application should provide access to the user's file system
    And allow the user to browse and select any type of file they wish to upload
    And provide a file selection dialog
    And the user should be able to navigate through their device's storage and select various types of files, such as:
      """
      Text files (e.g., .txt)
      Document files (e.g., .docx, .pdf)
      Spreadsheet files (e.g., .xlsx)
      Presentation files (e.g., .pptx)
      Image files (e.g., .jpg, .png)
      Audio files (e.g., .mp3)
      Video files (e.g., .mp4)
      Archive files (e.g., .zip)
      And other common file formats
      """
    When the user selects one or more files
    Then the application should notify the user that the files have been selected for upload
    And the selected files should be added as part of the new document
    And the user should be able to view, manage, or interact with these uploaded files within the application.

  Scenario: Uploading Various Types of Files via Google Drive
    The user's ability to click on the "Files" option via "Add New Document" and upload various types of files through their Google Drive account. The application should allow the user to access, select, and upload files from Google Drive seamlessly.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Files" option
    Then the application should provide an option to connect to Google Drive
    And allow the user to access their Google Drive files
    And authenticate the user's Google account to grant access
    When the user successfully connects to Google Drive
    Then the application should display the user's Google Drive files and folders
    And allow the user to navigate through their Google Drive storage
    And select various types of files from Google Drive, such as:
      """
      Text files (e.g., .txt)
      Document files (e.g., .docx, .pdf)
      Spreadsheet files (e.g., .xlsx)
      Presentation files (e.g., .pptx)
      Image files (e.g., .jpg, .png)
      Audio files (e.g., .mp3)
      Video files (e.g., .mp4)
      Archive files (e.g., .zip)
      And other common file formats
      """
    When the user selects one or more files from Google Drive
    Then the application should notify the user that the files from Google Drive have been selected for upload
    And the selected files should be added as part of the new document
    And the user should be able to view, manage, or interact with these uploaded files within the application.

  Scenario: Limiting the Number of Uploading Files
    The user's ability to click on the "Files" option via "Add New Document" and attempt to upload files, but they are limited to a specific number of files as defined by the application. If the user exceeds this limit, they receive an error message and cannot upload additional files beyond the specified limit.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Files" option
    Then the application should provide access to the user's file system
    And allow the user to browse and select files from their device or Google Drive
    When the user attempts to select files
    And the number of selected files exceeds the specified limit "X"
    Then the application should display an error message or notification, indicating that the user has exceeded the file upload limit
    And prevent the user from selecting and uploading additional files
    When the user selects a number of files within the specified limit "X"
    Then the selected files should be added as part of the new document
    And the user should be able to view, manage, or interact with these uploaded files within the application.

  Scenario: Accessing and Using the Current Location
    The user's ability to click on the "Location" option via "Add New Document" and grant permission to access their current location. The application should display the current location with a proper address and provide a "Use this location" button for the user to confirm and use the location for the add document.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Location" option
    Then the device should prompt the user to grant permission to access their current location
    When the user grants permission
    Then the application should retrieve the user's current location coordinates
    And convert the coordinates into a properly displayed address
    And display the current location and address on the screen
    And at the bottom center of the screen, there should be a prominently displayed "Use this location" button
    When the user clicks on the "Use this location" button
    Then the application should confirm that the selected location has been chosen for the new document
    And the location details should be added as part of the new document
    And the user should be able to proceed with creating the document using the selected location.
    Then the uploaded document should display in the Docs tab with Location icon

  Scenario: Setting and Zooming In/Out on the Location
    The user's ability to click on the "Location" option via "Add New Document," grant permission to access their current location, and zoom in and out while setting the location by using pinch-to-zoom gestures and tapping to confirm the precise location.
    Given the user is logged into the application
    When the user initiates the process to add a new document
    Then the application should open a menu with options for adding various types of content
    When the user selects the "Location" option
    Then the device should prompt the user to grant permission to access their current location
    And the application should retrieve the user's current location coordinates
    And convert the coordinates into a properly displayed address
    And display the current location and address on the screen
    And at the bottom center of the screen, there should be a prominently displayed "Use this location" button
    When the user wants to set the location more precisely by zooming in or out
    Then the user can use standard pinch-to-zoom gestures on the screen
    And the application should respond by zooming in or out on the map
    And the user should be able to see a more detailed view of the location or zoom out for a broader view
    When the user is satisfied with the zoomed-in or zoomed-out view
    Then the user can tap on the map to set the location precisely
    And the tapped location should be marked or confirmed as the selected location for the new document
    Then the User should be able to view the uploaded Location document in the Docs tab

  Scenario: Uploading a Single Image via "Add New Document" with Confirmation
    The user's ability to upload a single image via "Add New Document" with a confirmation step. The user selects an image, reviews it in the confirmation step, and can either confirm the selection or cancel it. Upon confirmation, the selected image is added to the new document, and the user can proceed with document creation.
    Given the user is logged into the application.
    When the user initiates the process to add a new document.
    Then the application should open a menu with options for adding various types of content.
    When the user selects the "Gallery" option.
    Then the application should open the user's device gallery.
    And the user should be able to browse and select an image.
    When the user selects a single image.
    And the user should be prompted with a confirmation step.
    And the confirmation step should include:
      """
      A preview of the selected image.
      An option to confirm the selection.
      An option to cancel the selection.

      """
    When the user confirms the selection.
    Then the application should notify the user that the image has been successfully Uploaded.
    And the selected image should be added as part of the document.
    And the confirmation step should close.
    When the user cancels the selection.
    Then the application should return to the gallery without selecting the image.
    And the user should be able to choose a different image or exit the "Add New Document" process.

  Scenario: Uploading a Single File via "Add New Document" with Confirmation
    The user's ability to upload a single file via "Add New Document" with a confirmation step. The user selects a file, reviews it in the confirmation step, and can either confirm the selection or cancel it. Upon confirmation, the selected file is added to the new document, and the user can proceed with document creation.
    Given the user is logged into the application.
    When the user initiates the process to add a new document.
    Then the application should open a menu with options for adding various types of content.
    When the user selects the "Files" option.
    Then the application should provide access to the user's file system.
    And allow the user to browse and select a single file.
    When the user selects a file.
    And the user should be prompted with a confirmation step.
    And the confirmation step should include:
      """
      A preview of the selected file.
      An option to confirm the selection.
      An option to cancel the selection.
      """
    When the user confirms the selection.
    And the selected file should be added as part of the new document.
    And the confirmation step should close.
    When the user cancels the selection.
    Then the application should return to the file selection screen without selecting the file.
    And the user should be able to choose a different file or exit the "Add New Document" process.

  Scenario: Uploading a Profile Picture for an Uploaded Contact
    The user's ability to upload a contact via "Add New Document," view the uploaded contact, access the hamburger menu, and upload a profile picture for the contact by selecting options such as "Take Photo" or "Pick from Gallery."
    Given the user is logged into the application.
    When the user initiates the process to add a new document.
    Then the application should open a menu with options for adding various types of content.
    When the user selects the "Contacts" option.
    Then the application should provide access to the user's contact list.
    And allow the user to upload a contact as part of the new document.
    When the user uploads a contact.
    And provide an option to view the uploaded contact.
    When the user clicks on "View" to access the uploaded contact.
    Then the application should display the contact details and interface.
    And at the top left or by left-swiping, there should be a hamburger menu icon.
    When the user clicks or left-swipes on the hamburger menu icon.
    Then the application should display a menu with additional options.
    And the menu should include options such as:
      """
      Take Photo
      Pick from Gallery.

      """
    When the user selects "Take Photo."
    Then the device camera should open, allowing the user to take a photo.
    And once the user takes a photo, it should be set as the profile picture for the uploaded contact.
    When the user selects "Pick from Gallery."
    Then the user should be able to browse and select an image from their device gallery.
    And once an image is selected, it should be set as the profile picture for the uploaded contact.
    And the application should notify the user that the profile picture has been updated.
    And the user should see the updated profile picture in the contact details.
    And the user should be able to interact with the contact as needed.

  Scenario: Uploading and Viewing a Profile Picture for an Uploaded Contact
    The user's ability to upload a contact via "Add New Document," view the uploaded contact, access the hamburger menu, upload a profile picture for the contact by selecting options such as "Take Photo" or "Pick from Gallery," and view the uploaded profile picture within the contact details.
    Given the user is logged into the application
    When the user initiates the process to add a new document.
    Then the application should open a menu with options for adding various types of content.
    When the user selects the "Contacts" option.
    Then the application should provide access to the user's contact list.
    When the user uploads a contact.
    And provide an option to view the uploaded contact.
    When the user clicks on "View" to access the uploaded contact.
    Then the application should display the contact details and interface.
    And at the top left or by left-swiping, there should be a hamburger menu icon.
    When the user clicks or left-swipes on the hamburger menu icon.
    Then the application should display a menu with additional options.
    When user clicks on profile photo
    And the menu should include options such as:
      """
      Take Photo
      Pick from Gallery.


      """
    When the user selects "Take Photo."
    Then the device camera should open, allowing the user to take a photo.
    And once the user takes a photo, it should be set as the profile picture for the uploaded contact.
    When the user selects "Pick from Gallery."
    Then the user should be able to browse and select an image from their device gallery.
    And once an image is selected, it should be set as the profile picture for the uploaded contact.
    And the application should notify the user that the profile picture has been updated.
    And the user should see the updated profile picture in the contact details.
    When the user wants to view the uploaded profile picture.
    Then the user should be able to tap on the profile picture within the contact details.
    And the selected profile picture should be displayed in a larger view.
    And the user should be able to close the profile picture view and continue interacting with the contact as needed.

  Scenario: Customizing File Upload Progress Bar
    The user interacts with an application that offers the capability to upload files. The focus of this scenario is on customizing the file upload progress bar. The user engages with the file upload feature, and the application allows them to personalize and enhance the appearance and behavior of the progress bar as files are being uploaded. This customization might include changing the visual style, adding animations, or providing additional information to make the file upload process more informative and visually engaging for the user.
    Given the user is logged into the application
    When the user initiates the process to add new documents
    And the user uploads a Document.
    When the file upload process starts.
    Then the application should display a customized and visually appealing progress bar.
    And the progress bar should include animations or color changes to make it more engaging.
    And the user should be able to interact with the progress bar, such as pausing or resuming the upload.
    And when the upload is complete, the progress bar should celebrate the successful upload.

  Scenario: Document Collaboration and Commenting
    Users collaborate on a document within an application that supports real-time collaboration and commenting features. Users are able to work together on the same document, making edits, adding comments, and discussing changes in real-time. This functionality facilitates efficient teamwork, enhances communication, and streamlines the document creation or editing process. Users can provide feedback, suggest revisions, and track document changes, making the collaborative experience seamless and productive.
    Given Launch the application And click on Domes
    When the user is viewing a shared document in the "Docs" tab.
    And the user opens the document.
    Then the application should provide a commenting feature, allowing users to leave comments or annotations on the document.
    And comments should support rich text, attachments, and mentions.
    And users should receive notifications when new comments are added to a shared document.

  Scenario: Applying Filters while Uploading Image
    In this scenario, users are presented with an image upload feature that includes the option to apply filters before finalizing the image upload. Users can select from a variety of filters to enhance, modify, or stylize the image according to their preferences. This functionality adds a creative dimension to the image upload process, allowing users to customize and improve their images before sharing or using them within the application. It enhances user experience by providing real-time editing capabilities, making image uploads more engaging and visually appealing.
    Given the user is uploading an image to the Docs tab.
    When the user selects an image to upload.
    Then the application should provide filter options.
    And the user should be able to apply different filters to the image.
    Then the filtered image should upload successfully
    And the application should confirm the successful upload

  Scenario: Grouping Uploaded Documents into Folders
    Users are provided with the capability to organize their uploaded documents into folders within an application. Users can create, manage, and categorize their documents by grouping related files together in folders. This feature enhances document organization, simplifies navigation, and improves accessibility. Users can efficiently locate and access specific documents by sorting them into logical groupings, contributing to a more structured and user-friendly document management system within the application.
    Given the user is logged into the application
    When the user accesses the "Docs" tab
    And there are multiple uploaded documents visible
    Then the application should provide an option to create a new folder
    And the user can enter a folder name
    And the user can confirm the creation of the folder
    When the user selects one or more documents
    Then the application should allow the user to move the selected documents into the newly created folder
    And the documents should be organized within the folder
    And the user should be able to access the folder and its contents

  Scenario: Document Access in Offline Mode
    Users can access and work on documents even when they're offline, with changes syncing when they reconnect.
    Given a user is working with the application
    And the user has previously accessed a document
    When the user loses internet connectivity or goes offline
    Then the user should be able to continue accessing the previously opened document
    And the application should indicate the user is in offline mode
    And any changes made should be cached locally on the device
    And the application should sync the changes once the user is back online

  Scenario: Synchronization of Documents Across Devices
    Documents and changes made are synchronized across multiple devices in real-time.
    Given a user accesses the application from multiple devices
    And the user has the same document open on both devices
    When the user makes edits to the document on one device
    When the user makes edits to the document on one device
    And the document on the other device should reflect the latest edits

  Scenario: Bulk Download of Multiple Files
    Users can download multiple files at once, bundled in a single compressed file for convenience.
    Given a user has multiple documents stored in the application
    And the user selects multiple documents or folders for download
    When the user initiates the bulk download action
    Then the application should compress the selected files into a single archive
    And provide the user with a download link or option to download the compressed file
    And the user should receive all selected files in a single download

  Scenario: Advanced Search and Filters for Documents
    Users can easily find specific documents using advanced search filters like document type, creation date, and collaborators.
    Given a user has numerous documents stored in the application
    When the user accesses the document library
    And the user initiates an advanced search
    Then the application should provide filters such as document type, creation date, and collaborators
    And the user should be able to specify search criteria using these filters
    And the application should display a refined list of documents matching the criteria
