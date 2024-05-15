# Development and Simulation of the Robot for Operation on Flat Surfaces

## Abstract

This thesis introduces the design and simulation of a versatile 4-degrees-of-freedom (DOF) writing robot, employing PID controllers for precise 
joint control. Implemented in MATLAB/Simulink, the comprehensive simulation environment covers trajectory planning, inverse and forward kinematics,
 dynamics, and PID control. Results demonstrate accurate calculations, affirming the potential for physical construction of the robot. 
 A notable contribution is the integration of CAD models with dynamic simulation, offering a transferable framework for efficient design and
 development of robotic systems. The 4DOF design streamlines construction, control, and adaptability, making it suitable for various writing
 tasks in industry, education, and assistive technology. Successful simulation of core functionalities, including PID control for joint movement
 precision, sets the stage for future endeavors such as physical construction, advanced control algorithm development, and further research in
 robotic system design and simulation. The outlined methodology combining CAD modeling with dynamic simulation serves as a cornerstone for optimizing
 intricate mechanical systems, fostering advancements in robotics technology.

## Prerequisites
To run the projects you need to have MATLAB with Simscape Multibody installed.

## How to run
To run the project you have two ways one is from a matlab scriptor getting inside the simulink and clickig run:

 ### Running from Matlab Script
1. **Open MATLAB:**
   Launch MATLAB on your computer.

2. **Navigate to Project Directory:**
   Use the MATLAB command window or the Current Folder browser to navigate to the directory where your project files are located.

3. **Open the Project File:**
   Locate the main MATLAB script or the project file (`.m` or `.mlx`) that you use to initiate the simulation. Double-click on it to open in the MATLAB Editor.

4. **Set MATLAB Path:**
   If your project involves multiple files or dependencies, make sure to set the MATLAB path appropriately so that MATLAB can locate all necessary functions and files.

5. **Load the Simulink Model:**
   Inside your MATLAB script or project file, load the Simulink model (`.slx` file) that contains the simulation setup. You can use the `load_system` function for this purpose.

   ```matlab
   load_system('WritingRobot.slx');
    ```
6. **Configure Simulation Parameters:**
   Set up simulation parameters as required. This may include setting simulation duration, solver options, and other simulation settings.
   
   ```matlab
   % Example: Set simulation duration to 10 seconds
    set_param('WritingRobot', 'StopTime', '10');
    ```
7. **Run Simulation:**
    Use the sim command to start the simulation.

   ```matlab
    % Run simulation
    sim('WritingRobot');
    ```

## Disclaimer

Please note that the documentation for this thesis project is provided in Albanian. However, all code within the project is documented and written in English for accessibility and collaboration purposes.
