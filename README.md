# Git and GitHub Assignment - Parking Infractions Script

## Description

This repository was created as part of an assignment for the Data Science Foundations course at the University of Toronto's Data Sciences Institute. The assignment involves creating a repository on GitHub and pushing a shell script, a CSV file and a README file to the repository. 

The shell script is written in bash. The CSV file is a dataset containing information related to parking tickets issued in Toronto, and is downloadable from the [City of Toronto](https://open.toronto.ca/dataset/parking-tickets/) website.

## Usages

The script takes the `parking_data.csv` file as a positional parameter from the terminal as the input so that the script can be run from any computer, as long as you have the CSV file.


It then outputs in alphabetical order the different types of parking infractions to the terminal, as well as calculates the mean, minimum and maximum values of all parking fines:

![w:1000 left](images/assignment-output.jpg)

For each instance of the infraction "parking in a fire route" listed in the CSV file, the script outputs the infraction description, the fine amount and the street address, along with their original headings to a separate CSV file called `firerouteinfraction.csv`:

![w:1000 left](images/fire-route-infractions-csv.jpg)

## How to Use 

### Files relevant for running the script

- assignment1.sh (main directory/folder)
- parking_data.csv (data subdirectory/folder)

### Steps to download assignment files and run script

1. Scroll to the top of the repository main page, and click on the green "Code" button. 
2. Select "Download ZIP," and save the file on your computer.
3. Right click on the zipped file, select extract all, and select a directory on your Desktop you would like to extract all of the project files to.
4. Open a Linux terminal. (e.g., [Ubuntu](https://ubuntu.com/))
5. Change the working directory to the directory that contains the assignment1.sh file using `cd`. For example, if the file exists in a directory called `dsf-assignment` on your Desktop, enter `cd ~/Desktop/dsf-assignment` on the command line.
6. Enter `./assignment1.sh data/parking_data.csv` on the command line to execute the script, taking the `parking_data.csv` file in the `data` subdirectory as its input.

## Support

For help with installation or running the script, please [create an issue](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/working-with-your-remote-repository-on-github-or-github-enterprise/creating-an-issue-or-pull-request).

## Contribute

To contribute to the project, please feel free to [make a copy of the repository](https://docs.github.com/en/get-started/quickstart/fork-a-repo) to add or make changes. To upload changes, create a [pull request](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/working-with-your-remote-repository-on-github-or-github-enterprise/creating-an-issue-or-pull-request) to merge your changes with the repository.