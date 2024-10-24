# Collection of cronjobs scripts

## Cronjobs

### System update

```bash
0 1 * * * sudo /home/admin/scripts/system_update.sh >> /var/log/system_update.log 2>&1
```

This cronjob runs daily at 1:00 AM and performs the following tasks:

- Updates package lists (`apt update`)
- Upgrades installed packages (`apt upgrade`)
- Removes unnecessary packages (`apt autoremove`)
- Logs all output to `/var/log/system_update.log`

Prerequisites:

1. Ensure the script has executable permissions:

   ```bash
   chmod +x /home/admin/scripts/system_update.sh
   ```

2. Create the log file with appropriate permissions:

   ```bash
   sudo touch /var/log/system_update.log
   sudo chown admin:admin /var/log/system_update.log
   ```

3. Make sure the user has sudo privileges without password for these specific commands by adding the following to `/etc/sudoers` (use `visudo`):
   ```
   admin ALL=(ALL) NOPASSWD: /usr/bin/apt update, /usr/bin/apt upgrade -y, /usr/bin/apt autoremove -y
   ```

Note: Replace 'admin' with your actual username if different.
