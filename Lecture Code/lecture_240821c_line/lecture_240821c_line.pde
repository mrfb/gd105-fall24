size(400, 400);          // change the canvas size

// draw a diagonal line from the TR to the BL
stroke(255, 0, 0);       // red line
line(400, 0,             // point 1: Top Right (400, 0)
     0, 400);            // point 2: Bottom Left (0, 400)

// draw a horizontal line in the dead center
stroke(0, 255, 0);       // green line
line(0, 200,             // point 1: left middle (0, 200)
     400, 200);          // point 2: right middle (400, 200)

// draw a line from the center to the bottom
stroke(0, 0, 255);       // blue line
line(width/2, height/2,  // point 1: center (200, 200)
     width/2, height);   // point 2: center bottom (200, 400)
