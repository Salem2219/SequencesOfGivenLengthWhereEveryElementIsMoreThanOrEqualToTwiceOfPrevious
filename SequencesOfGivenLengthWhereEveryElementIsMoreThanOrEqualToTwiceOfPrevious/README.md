# Sequences of given length where every element is more than or equal to twice of previous

Given two integers m & n (up to 14), find the number of possible sequences of length n such that each of the next element is greater than or equal to twice of the previous element but less than or equal to m.

Examples :

Input : m = 10, n = 4
Output : 4
There should be n elements and value of last
element should be at-most m.
The sequences are {1, 2, 4, 8}, {1, 2, 4, 9},
                 {1, 2, 4, 10}, {1, 2, 5, 10}

Input : m = 5, n = 2
Output : 6
The sequences are {1, 2}, {1, 3}, {1, 4},
                  {1, 5}, {2, 4}, {2, 5}


# FSMD
Basic Finite State Machine with Datapath (FSMD) example to find the number of possible sequences of length n such that each of the next element is greater than or equal to twice of the previous element but less than or equal to m.

## Install

These examples use [ModelSim&reg; and Quartus&reg; Prime from Intel FPGA](http://fpgasoftware.intel.com/?edition=lite), [GIT](https://git-scm.com/download/win), [Visual Studio Code](https://code.visualstudio.com/download), make sure they are installed locally on your computer before proceeding.

## Usage

1. Grab a copy of this repository to your computer's local folder (i.e. C:\projects):

    ```sh
    $ cd projects
    $ git clone https://github.com/Salem22/SequencesOfGivenLengthWhereEveryElementIsMoreThanOrEqualToTwiceOfPrevious.git
    ```
2. Use Visual Studio Code (VSC) to edit and view the design files:

    ```sh
    $ cd SequencesOfGivenLengthWhereEveryElementIsMoreThanOrEqualToTwiceOfPrevious
    $ code .
    ```
    Click on the toplevel.vhd file in the left pane to view its contents.
    
3. From the VSC View menu, choose Terminal, in the VCS Terminal, create a "work" library:

    ```sh
    $ vlib work
    ```
    
4. Compile all the design units:

    ```sh
    $ vcom *.vhd
    ```
    
5. Simulate your design. For example, if m = 10, n = 4 then y = 4:

    ```sh
    $ vsim work.tb
    ```
