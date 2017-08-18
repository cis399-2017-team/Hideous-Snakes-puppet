#This module is used to clean user files from the system every so often

class fakefreeze {
  cron { 'clean fake1':
    command => 'find /tmp -user fake1 -delete && find /var/tmp -user fake1 -delete',
    user => 'root',
    ### hour => '23',
    minute => '*/3',
  }
  cron { 'clean fake2':
    command => 'find /tmp -user fake2 -delete && find /var/tmp -user fake2 -delete',
    user => 'root',
    hour => '23',
  }
  cron { 'clean fake3':
    command => 'find /tmp -user fake3 -delete && find /var/tmp -user fake3 -delete',
    user => 'root',
    hour => '23',
  }
}
