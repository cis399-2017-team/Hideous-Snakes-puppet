## Template for later use!!!##
class users {
   user { 'fake':
      ensure  => 'present',
      comment => 'Fake Fakenstine,,,',
      gid     => '1001',
      groups  => ['sudo', 'video'],
      home    => '/home/fake',
      shell   => '/bin/bash',
      uid     => '1001',
    }
}
