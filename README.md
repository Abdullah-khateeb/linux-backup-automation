# Backup Automation Script (Linux)

A simple Linux backup automation tool written in Bash.
The script creates compressed, timestamped backups of a specified directory, supports manual execution, and can be automated using cron.

## Project Structure

```
backup_automation/
├── backup.sh
├── backups/
├── logs/
└── README.md
```

## Features

- Automated directory backup
- Timestamped `.tar.gz` backup files
- Automatic creation of backup and log directories
- Backup activity logging
- Supports manual and scheduled (cron) execution

## Requirements

- Linux operating system
- Bash shell
- `tar` utility

## Manual Usage

1. Make the script executable:
   ```bash
   chmod +x backup.sh
   ```

2. Run the script manually:
   ```bash
   ./backup.sh
   ```

3. Backups are stored in:
   ```
   backups/
   ```

4. Logs are stored in:
   ```
   logs/backup.log
   ```

## Cron Automation (Optional)

To schedule the backup to run automatically every day at **2:00 AM**:

1. Open crontab:
   ```bash
   crontab -e
   ```

2. Add the following line:
   ```text
   0 2 * * * /full/path/to/backup_automation/backup.sh
   ```

3. Save and exit. The backup will now run automatically.

## Security Notes

- Ensure proper permissions on backup files
- Store backups on external or remote storage
- Avoid backing up sensitive data without encryption

## Skills Demonstrated

- Linux file system
- Bash scripting
- Automation using cron
- Logging and monitoring basics

## Author

Abdullah
