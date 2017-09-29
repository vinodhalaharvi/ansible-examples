# Ensure a job that runs at 2 and 5 exists.
# Creates an entry like "0 5,2 * * ls -alh > /dev/null"
- cron:
    name: "check dirs"
    minute: "0"
    hour: "5,2"
    job: "ls -alh > /dev/null"

# Ensure an old job is no longer present. Removes any job that is prefixed
# by "#Ansible: an old job" from the crontab
- cron:
    name: "an old job"
    state: absent

# Creates an entry like "@reboot /some/job.sh"
- cron:
    name: "a job for reboot"
    special_time: reboot
    job: "/some/job.sh"

# Creates an entry like "PATH=/opt/bin" on top of crontab
- cron:
    name: PATH
    env: yes
    value: /opt/bin

# Creates an entry like "APP_HOME=/srv/app" and insert it after PATH
# declaration
- cron:
    name: APP_HOME
    env: yes
    value: /srv/app
    insertafter: PATH

# Creates a cron file under /etc/cron.d
- cron:
    name: yum autoupdate
    weekday: 2
    minute: 0
    hour: 12
    user: root
    job: "YUMINTERACTIVE: 0 /usr/sbin/yum-autoupdate"
    cron_file: ansible_yum-autoupdate

# Removes a cron file from under /etc/cron.d
- cron:
    name: "yum autoupdate"
    cron_file: ansible_yum-autoupdate
    state: absent

# Removes "APP_HOME" environment variable from crontab
- cron:
    name: APP_HOME
    env: yes
    state: absent
