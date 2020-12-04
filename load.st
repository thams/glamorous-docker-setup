Author fullName: 'GlamorousToolkit'.

IceCredentialsProvider useCustomSsh: true.
IceCredentialsProvider sshCredentials
	publicKey: '/run/secrets/myid_rsa.pub';
	privateKey: '/run/secrets/myid_rsa'.


EpMonitor current disable.
[

    Metacello new
      baseline: #TrackAlong;
      repository: 'github://thams/trackalong';
      onConflictUseIncoming;
      load.

] ensure: [ EpMonitor current enable ].


Smalltalk snapshot: true andQuit: true.
