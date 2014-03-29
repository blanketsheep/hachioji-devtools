execute "ubuntu-japanese-team" do
  command 'wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | sudo apt-key add -; wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | sudo apt-key add -; sudo wget https://www.ubuntulinux.jp/sources.list.d/saucy.list -O /etc/apt/sources.list.d/ubuntu-ja.list; sudo apt-get update'
end
package 'ubuntu-defaults-ja'

package 'python-software-properties'
package 'software-properties-common'
execute "ppa:webupd8team/brackets" do
  command 'sudo add-apt-repository ppa:webupd8team/brackets; sudo apt-get update'
end
#execute "ppa:finalterm/daily" do
#  command 'sudo add-apt-repository ppa:finalterm/daily; sudo apt-get update'
#end


package 'brackets'
package 'gitg'
#package 'finalterm'
package 'roxterm'
package 'ruby'
package 'ruby-dev'
gem_package 'bundler'
package 'nodejs'
package 'npm'