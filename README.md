# Quizz-Game-UI
This is a ui of mobile quizz game (ios and android) developed using flutter.

This is a responsive cross platforme mobile app develped by flutter framework represents quizz game here it is the link to the ui design (figma file):
[https://www.figma.com/file/UFteNYsdzsUdRpYajUCe1O/Quizz-Game-Design?type=design&node-id=0%3A1&mode=design&t=Qgear31mQNShVzIS-1]

Folder Structure :
  The ui code is in the lib folder which is devided to :
   - commun folder : contains the commun widgets.
   - features folder : devided to :
      - sign_in folder : two folders the first one for the guide screens and the auth screens.
      - play forlder : contain the play and the win screen.
    -> Note : each screen folder contains screen file and components folder witch contain the screen`s components files.

Dependencies : 
  - get : for state managment and routing managment.
  - flutter_animate : for animations (loading animation).

Tips :
  - If you want to use directly the code you can replace the provided code folders in your project (the import paths are 
    relative).
  - The backend functionalities will be implemented sooner.

Game Description :
  - This is a simple quizz game that needs to be played by 2,3 or 4 players each player is defined by his color(red,green,blue 
    and yellow).
  - A set of 7 questions (or more) will be posted one by one and the winner is the one who will answer the most questions correctly.
  - The first one who will press the button is the one answering the current question.
  - If The question is answered correctly his score will be increased, else the next one who pressed the button will answer 
    knowing the answer of the previous player and so on until the third one who pressed his button,that will prevent the spam 
    in the game.
