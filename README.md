# Bash Log Analysis Project

A small project showcasing my learning journey with **Bash scripting**.  
I built scripts to analyse log files (`system.log` and `application.log`), applying variables, loops, conditions, and arrays, while experimenting with **aesthetic output formatting**.

📖 What I Learned

From the video and through practicing, I gained experience with:

- Fundamental Bash scripting concepts: **variables**, **arrays**, **conditionals (if-else)**, **loops (for, while)**.  
- Parsing log files (e.g. `system.log`, `application.log`) to extract useful information.  
- Using standard Unix tools for text processing: `grep`, `awk`, `sed`, `cut`, etc.  
- Building scripts that automatically analyze logs (counting errors, extracting recent entries, summarizing statistics).  
- Formatting output for readability: separators, headings, possibly colors or emphasis.  

🛠 Project Features

This project implements:

- Script(s) to analyze `system.log` and `application.log`  
- Counting number of error or warning messages  
- Retrieving the most recent error or critical log entry  
- Aggregating statistics (which module generates most errors, etc.)  
- Neat output: headings, sections, clean alignment  

🚀 How to Use

1. Clone the repository

git clone https://github.com/surojitmahanta/bash-log-analysis.git

cd bash-log-analysis

Make the script executable

chmod +x analyse_logs.sh

Run the script

./analyse_logs.sh

View the output in the terminal. You should see sections like “Application Log Analysis”, “System Log Analysis”, counts of errors/warnings, most recent entries, etc.

Contributing

Suggestions welcome. If you want to add a script or improve tests:

Fork the repo

Create a feature branch feature/your-script

Add your script with a short README header and tests

Create a pull request with a clear description

Contact

Contact: https://www.linkedin.com/in/surojit-mahanta/ or open an issue on this repo.
