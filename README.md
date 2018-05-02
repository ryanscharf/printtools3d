# printtools3d

Evidently installing from github doesn't work like I thought it would, so you'll have to manually place dirtydata.txt (either copy/paste all the data in it into a new text file, or download it from git) into wherever your working directory is for importBed() to work.

This is a tool to do some calibration work for cartesian style 3d printers with belts and leadscrews.  I gave some example values for all of the functions and provided a dirtydata.txt file to use for importBed(), which is then used for xyztogrid(), which is then used for graphBed().  

Cartesian 3d printers are just 3d printers that operate off of a simple X and Y coordinate systems.  Each motor that runs one of the dimensions (up/down, left/right, front/back) and the motor that pulls the filament to the extruder (the thing that shoots out the plastic) operates by making little tiny moves based off of how far it thinks that each little tiny move will translate to make the X, Y, Z, or E parts move.  The blgcode() function spits out GCODE, which is the type of instructions that most 3d printers use for printing, that will test the height of the print bed 25mm increments across the X and Y axes.  When the printer reads the GCODE, it will give you back a glob of information, which you can process through importBed() to get nice columns of X, Y, and Z values.  From there, you can run xyztogrid() which will organize the unintuitive columns of data into a matrix.  The matrix will be layed out in the same coordinates (or upside down depending on if your Y0 is at the front or back of your print bed) as the bed from which you can see the patterns more easily.  You can take that matrix information and turn it into an interactive 3d graph with graphBed().  Normally the varience of heights is very tiny, around .3mm from the highest point to the lowest point, so I had to blow that up by a factor of 100.  
 
 Install with install_github("ryanscharf/printtools3d").

You can find a writeup at http://ryanscharf.com/project/printtools3d/
