hostname = node["hostname"]

file '/etc/motd' do
	content "the hostname is #{hostname}"
end
