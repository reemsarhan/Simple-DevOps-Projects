# server-stats.sh

#### This is the solution for this question  
[https://roadmap.sh/projects/server-stats](https://roadmap.sh/projects/server-stats)

## Overview  

The `server-stats.sh` script provides essential performance statistics for a Linux server, including CPU, memory, and disk usage, as well as the top 5 processes consuming the most CPU and memory. Additional system information such as OS version, uptime, load average, logged-in users, and failed login attempts is also displayed.

---

## How to Create and Use the Script  

### 1. Create the Script File  
Open a terminal and follow these steps:  

**Create the file using `vim`:**  
   ```bash
   vim server-stats.sh
   ```
## Press i to enter insert mode and paste the script content.
## After adding the content, press Esc, then type :wq and press Enter to save and exit.

### 2. Make the Script Executable
## Run the following command to make the script executable:

```bash
chmod +x server-stats.sh
```
### 3. Run the Script
Execute the script using the following command:

```bash
./server-stats.sh
```
### Example Output
## When you run the script, the output will look something like this:

```
 === Server Stats ===
Total CPU Usage:
./server-stats.sh: line 6: mpstat: command not found

Total Memory Usage:
Used: 1.1Gi, Free: 5.7Gi, Usage: 14.29%

Total Disk Usage:
Used: 619G, Free: 1.1T, Usage: 37%

Top 5 Processes by CPU Usage:
    PID COMMAND         %CPU
      1 systemd          1.5
    881 java             0.9
    836 python3          0.6
    387 python3.10       0.2
    264 snapd            0.1

Top 5 Processes by Memory Usage:
    PID COMMAND         %MEM
    881 java             7.3
    387 python3.10       1.2
    434 dockerd          1.0
    340 containerd       0.6
    264 snapd            0.5

=== Additional Stats ===
OS Version: Ubuntu 22.04.3 LTS
Uptime: up 2 hours, 32 minutes
Load Average: 0.00, 0.02, 0.00
Logged in Users: 1
Failed Login Attempts: 0
```
