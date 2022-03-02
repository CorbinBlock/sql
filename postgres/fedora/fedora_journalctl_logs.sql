select * from information_schema.tables

CREATE TABLE fedora_journalctl_logs
 (log_text text);
 
\copy fedora_journalctl_logs from '/tmp/journalctl_logs_20220228.txt';


select * from fedora_journalctl_logs
