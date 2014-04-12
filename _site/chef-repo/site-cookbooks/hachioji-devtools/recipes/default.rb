execute "change mirror" do
  command 'sudo sed -i /etc/apt/sources.list -e "s|http://us.archive.ubuntu.com/ubuntu/|mirror://mirrors.ubuntu.com/mirrors.txt|g"; sudo apt-get update'
end

package 'python-software-properties'
package 'software-properties-common'

execute "ubuntu-japanese-team" do
  command 'wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | sudo apt-key add -; wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | sudo apt-key add -; sudo wget https://www.ubuntulinux.jp/sources.list.d/saucy.list -O /etc/apt/sources.list.d/ubuntu-ja.list; sudo apt-get update'
end
execute "ppa:webupd8team/sublime-text-3" do
  command 'sudo add-apt-repository ppa:webupd8team/sublime-text-3; sudo apt-get update'
end

#package 'fonts-takao-pgothic'
#package 'fonts-takao-gothic'
#package 'fonts-takao-mincho'
#package 'cmap-adobe-japan1'
#package 'ibus-gtk3'
#package 'ibus-qt4'
#package 'ibus-mozc'
#package 'language-pack-ja'
#package 'language-pack-gnome-ja'
package 'ubuntu-defaults-ja'

#package 'brackets'
#package 'finalterm'
#package 'gedit'
#package 'gedit-plugins'
#package 'gedit-developer-plugins'
#package 'geany'
#package 'geany-plugin-vc'
#package 'geany-plugin-markdown'
package 'libgtk-3-0'
package 'libgtk2.0-0'

package 'x11-apps'
package 'gitg'
package 'roxterm'
package 'sublime-text-installer'

package 'dos2unix'
package 'ruby'
package 'ruby-dev'
gem_package 'bundler'
package 'nodejs'
package 'npm'