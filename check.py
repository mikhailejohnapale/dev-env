# check.py


import os
from colorama import init, Fore


# initialize colorama
init(autoreset=True)


# clear screen
os.system('clear')


# Get user and remove newline.
user = os.popen('whoami').read().replace('\n', '')
print('User :', user, end='\n\n')


apps = {
    # zsh
    'Zsh': '/usr/bin/zsh',
    'oh-my-zsh': '/home/' + user + '/.oh-my-zsh/oh-my-zsh.sh',
    'Atom': '/usr/bin/atom',
    'Git': '/usr/bin/git',

    # ssh
    'SSh': '/usr/bin/ssh',
    'SSh public key': '/home/' + user + '/.ssh/id_rsa.pub',

    'TeamViewer': '/usr/bin/teamviewer',
    'Virtualbox': '/usr/bin/virtualbox',
    # 'Vagrant': '/usr/bin/vagrant',
    'Dropbox': '/usr/bin/dropbox',
    'Google Drive': '/usr/bin/grive',
    'Terminator': '/usr/bin/terminator',
    'ScudCloud': '/usr/bin/scudcloud',
    'Nodejs': '/home/' + user + '/.nvm/versions/v0.12.0/bin/node',
    'Bower': '/home/' + user + '/.nvm/versions/v0.12.0/bin/bower',
    'Flash Plugin for Firefox': '/usr/lib/firefox/browser/plugins/libflashplayer.so',
    # 'PostgreSQL': '/usr/bin/postgres',
    'Tmux': '/usr/bin/tmux',
    'Z': '/home/' + user + '/.bin/z/z.sh',

    # python 3 dependencies
    'python3-dev': '/usr/share/doc/python3-dev',
    'pip3': '/home/' + user + '/penv/bin/pip',
    'Python Virtual Environment': '/home/' + user + '/penv/bin/activate',
    'Python3': '/home/' + user + '/penv/bin/python'
}


passed = 0
failed = 0

print('{0:30} {1:55} {2}\n'.format('Application', 'Path', 'Status'))

# check paths
for app, path in apps.items():
    if os.path.exists(path):
        status = Fore.GREEN + 'PASSED'
        passed += 1
    else:
        status = Fore.RED + 'FAILED'
        failed += 1
    print('{0:30} {1:55} {2}'.format(app, path, status))


# stats
print('\n{0:8}: {1}'.format('Total', passed + failed))
print('{0:8}: {1}'.format('Passed', passed))
print('{0:8}: {1}'.format('Failed', failed))


# result
if failed > 0:
    result = Fore.RED + 'FAILED'
else:
    result = Fore.GREEN + 'PASSED'
print('\nResult :', result)
