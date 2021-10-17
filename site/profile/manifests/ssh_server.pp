class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADABAAABAQCz1QCAR3Jy9tmtjmcG901a6iFwGbPVb993735Z7xvRYoDc3Qj1PWzcFiXeBalt+kQtggin+Vg9Uw0+93itlJNfTnHm1sflr7CJYhBcJ15XZVhXX3gAz4K4HFdWBXQFTu1E3Qz9turclwRXC1wcbFayGwgRFSZqPYVq0WwYTvFsLgFeZo4ZpKvXDprbtQ2k9qEJcLdTa6SyLGo/uBoDlp8dAAtmsugin7y8nyCsseObj1N1HsssVz7oaqObMLs5LTFS5AjekMy0rllhyEYRn2txIuUcYA+CbxgxLF9ivO1HuhgbEb81nRbUEqJGVki0W5BDuxZfWc9oeVAAv1Jxd',
	}  
}
