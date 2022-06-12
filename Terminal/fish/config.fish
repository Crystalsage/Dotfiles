abbr -a yr 'cal -y'
abbr -a o 'xdg-open'
abbr -a gc 'gh gist create -w'
abbr -a bs 'batstat'
abbr -a paci 'yay -S'
abbr -a cx 'xclip -selection clipboard'


abbr -a g git
abbr -a gc 'git checkout'
abbr -a ga 'git add -p'
abbr -a gah 'git stash; and git pull --rebase; and git stash pop'

set -U fish_greeting ""
bind \cs 'fish_commandline_prepend sdf'

function apush
  adb push $argv /storage/self/primary/
end

function apull
  adb pull /storage/self/primary/$argv .
end

function mntusb
  sudo mount -o umask=0 /dev/sdc1 /run/media/bourbon/usb
  cd /run/media/bourbon/usb
end

function umntusb
  sudo umount /run/media/bourbon/usb
end

function d
	while test $PWD != "/"
		if test -d .git
			break
		end
		cd ..
	end
end
