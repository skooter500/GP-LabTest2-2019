# Games Programming Lab Test 2 2019

## Instructions
- You can use the [Processing reference](https://processing.org/reference/) (just the reference! not the forums or tutorial videos), but no other resources such as github, google or Facebook during the test
- Create a new blank Procerssing sketch and name the sketch DXXXXXX_WhateverYourNameIs. replace DXXXXX with your student numaber and WhateverYourNameIs with your name. 

Here is a video of the sketch you will be making today (click the picture for the video):

[![YouTube](http://img.youtube.com/vi/O7yDB3nuuug/0.jpg)](https://www.youtube.com/watch?v=O7yDB3nuuug)

## What is happening

- There are 10 buttons numbered 0-9 with random sizes of between 10 and 30 pixels radius (20-60 diameter) arranged in a circle. 
- When the sketch starts, the message displayed is "Enter 4 digit code"
- The code is 9293
- If the user clicks the sequence 9293, the message changes to "Correct" in green
- If the user clicks a different sequence of numbers, the message changes to "Incorrect" in red
- To get full marks in the test, you should at least one ArrayList, and make a class for the Buttons

Some tips:

- You should make a class for the buttons and an ```ArrayList<Button>``` to hold the buttons
- You should use sin and cos to calculate the positions of the buttons
- Make a method void mousePressed() on the sketch to detect mouse pressed
- To store the sequence of buttons that the user presses you can use either an ```ArrayList<Integer>``` or an ```int[]``` array or an [intlist]()
- Do your best and figure out as much as you can. Even if you can't get everything working

When you are finished, zip up your sketch folder and make sure the zip file is named DXXXXXX_WhateverYourNameIs.zip

## Marking Scheme

| Feature | Marks |
|---------|-------|
| The Button class | 30 marks |
| Arranging the buttons in a circle | 20 marks |
| Detecting the button clicks | 20 marks |
| Storing the sequence of button clicks | 10 marks |
| Detecting the code and printing the messages | 20 marks |