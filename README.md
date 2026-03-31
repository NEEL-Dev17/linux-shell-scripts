# linux-shell-scripts
A collection of Bash scripts for Linux system automation, log analysis, and open-source philosophy. Includes directory audits, package checks, log file summaries, and a personalized manifesto generator. Great for learning shell scripting, system management, and open-source practices.

# 🐧 Linux & Open Source Bash Scripts

![GitHub stars](https://img.shields.io/github/stars/<your-username>/<repo-name>?style=flat&logo=github)  
![GitHub forks](https://img.shields.io/github/forks/<your-username>/<repo-name>?style=flat&logo=github)  
![GitHub issues](https://img.shields.io/github/issues/<your-username>/<repo-name>?style=flat&logo=github)  
![GitHub last commit](https://img.shields.io/github/last-commit/<your-username>/<repo-name>?style=flat&logo=github)  
![GitHub language](https://img.shields.io/github/languages/top/<your-username>/<repo-name>?style=flat&logo=gnu-bash)  
![License](https://img.shields.io/github/license/<your-username>/<repo-name>?style=flat&logo=opensourceinitiative)

Welcome to a curated collection of **Bash scripts** for Linux system automation, log analysis, and open-source philosophy. These scripts are perfect for **students, sysadmins, and developers** looking to learn shell scripting or explore Linux and open-source principles in action.

---

## 📜 Scripts Included

### 1️⃣ Directory Audit Script
- Loops through important system directories (`/etc`, `/var/log`, `/home`)  
- Reports **size**, **permissions**, and **owner**  
- Demonstrates **loops, `ls -ld`, `du`, `awk`, and `cut`**  

### 2️⃣ Package Info Script
- Checks if a software package is installed  
- Displays **version** and **short description**  
- Uses **conditional statements** and **package manager detection (`dpkg`/`rpm`)**  

### 3️⃣ System Report Script
- Shows Linux **distribution**, **kernel version**, **user info**, **uptime**, and **open-source license**  
- Introduces **variables, command substitution, and output formatting**  

### 4️⃣ Log File Analyzer
- Reads a log file **line by line**  
- Counts keyword occurrences (e.g., ERROR, WARNING)  
- Prints **summary** and **last 5 matching lines**  
- Demonstrates **while loops, counters, and conditionals**  

### 5️⃣ Open Source Manifesto Generator
- Interactively asks **three questions** to generate a personalized manifesto  
- Combines answers into a **paragraph** and saves to a `.txt` file  
- Introduces **user input, string concatenation, date commands, and alias concept**  

---

## 🚀 Getting Started

🛠 Example Usage for Each Script

Directory Audit Script
```
./directory_audit.sh
```
## Output: Shows size, permissions, and owner for /etc, /var/log, /home, /usr/bin, /tmp

Package Info Script
```
./package_info.sh python3
```
## Output: Shows if python3 is installed, its version, and a short description

System Report Script
```
./system_report.sh
```
## Output: Displays distro, kernel, user, uptime, and OS license

Log File Analyzer
```
./log_analyzer.sh /var/log/syslog error
```
## Output: Counts lines with "error" and prints last 5 matching lines

Open Source Manifesto Generator
```
./manifesto_generator.sh
```
## Output: Prompts 3 questions and generates a personalized manifesto text file
