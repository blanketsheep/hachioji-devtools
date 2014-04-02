execute "ubuntu-japanese-team" do
  command 'wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | sudo apt-key add -; wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | sudo apt-key add -; sudo wget https://www.ubuntulinux.jp/sources.list.d/saucy.list -O /etc/apt/sources.list.d/ubuntu-ja.list; sudo apt-get update'
end
package 'language-pack-ja'
package 'language-pack-gnome-ja'
package 'ubuntu-defaults-ja'

package 'python-software-properties'
package 'software-properties-common'
#execute "ppa:webupd8team/brackets" do
#  command 'sudo add-apt-repository ppa:webupd8team/brackets; sudo apt-get update'
#end
#execute "ppa:finalterm/daily" do
#  command 'sudo add-apt-repository ppa:finalterm/daily; sudo apt-get update'
#end
execute "ppa:webupd8team/sublime-text-3" do
  command 'sudo add-apt-repository ppa:webupd8team/sublime-text-3; sudo apt-get update'
end


#package 'brackets'
#package 'finalterm'
package 'sublime-text-installer'
#package 'gedit'
#package 'gedit-plugins'
#package 'gedit-developer-plugins'
#package 'geany'
#package 'geany-plugin-vc'
#package 'geany-plugin-markdown'
package 'gitg'
package 'roxterm'
package 'dos2unix'

package 'ruby'
package 'ruby-dev'
gem_package 'bundler'
package 'nodejs'
package 'npm'