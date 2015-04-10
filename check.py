# check.py


from subprocess import Popen, PIPE, STDOUT
from colorama import init, Fore
import os
import re


# initialize colorama
init(autoreset=True)


# clear screen
os.system('clear')


# Get user and remove newline.
user = os.popen('whoami').read().replace('\n', '')
print('User :', user, end='\n\n')


apps = [
    ['Zsh', '/usr/bin/zsh', 'zsh --version'],
    ['oh-my-zsh', '/home/' + user + '/.oh-my-zsh/oh-my-zsh.sh', ''],
    ['Atom', '/usr/bin/atom', 'atom --version'],
    ['Git', '/usr/bin/git', 'git --version'],
    ['SSh', '/usr/bin/ssh', 'ssh -V'],
    ['SSh public key', '/home/' + user + '/.ssh/id_rsa.pub', ''],
    ['TeamViewer', '/usr/bin/teamviewer', 'teamviewer --version'],
    ['Virtualbox', '/usr/bin/virtualbox', 'vboxmanage --version'],
    ['Dropbox', '/usr/bin/dropbox', ''],
    ['Google Drive', '/usr/bin/grive', 'grive --version'],
    ['Terminator', '/usr/bin/terminator', 'terminator --version'],
    ['ScudCloud', '/usr/bin/scudcloud', 'cat /usr/share/applications/scudcloud.desktop | grep Version'],
    ['Nodejs', '/home/' + user + '/.nvm/versions/v0.12.0/bin/node', 'node -v'],
    ['Bower', '/home/' + user + '/.nvm/versions/v0.12.0/bin/bower', 'bower -v'],
    ['Flash Plugin for Firefox', '/usr/lib/firefox/browser/plugins/libflashplayer.so', ''],
    ['Tmux', '/usr/bin/tmux', 'tmux -V'],
    ['z', '/home/' + user + '/.bin/z/z.sh', ''],
    ['python3-dev', '/usr/share/doc/python3-dev', ''],
    ['pip3', '/home/' + user + '/penv/bin/pip', 'pip -V'],
    ['Python Virtual Environment', '/home/' + user + '/penv/bin/activate', ''],
    ['Python3', '/home/' + user + '/penv/bin/python', 'python -V']
]


passed = 0
failed = 0

print('{0:30} {1:55} {2:20} {3}'.format('Application', 'Path', 'Version', 'Status'))

# check paths
for app in apps:
    name = app[0]
    path = app[1]
    cmd  = app[2]

    ver_no = ''
    if os.path.exists(path):
        if cmd != '':
            byte = Popen(cmd, shell=True, stdin=PIPE, stdout=PIPE, stderr=STDOUT, close_fds=True)
            byte_ver = byte.stdout.read()
            ver_no = re.search(r'[0-9]*\.[0-9]*\.[0-9]*|[0-9]*\.[0-9]*', str(byte_ver)).group()
        status = Fore.GREEN + 'PASSED'
        passed += 1
    else:
        status = Fore.RED + 'FAILED'
        failed += 1
    print('{0:30} {1:55} {2:20} {3}'.format(name, path, ver_no, status))


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
