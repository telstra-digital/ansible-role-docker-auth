require 'serverspec'

set :backend, :exec

describe docker_container('docker_auth') do
  it { should be_running}
  it { should have_volume('/config','/auth/config') }
  it { should have_volume('/certs','/auth/certs') }
  it { should have_volume('/logs','/auth/logs') }
end

describe port(5001) do
  it { should be_listening }
end
