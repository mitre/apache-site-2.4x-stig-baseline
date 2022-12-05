control 'V-92785' do
  title "The Apache web server must perform RFC 5280-compliant certification
path validation."
  desc  "A certificate's certification path is the path from the end entity
certificate to a trusted root certification authority (CA). Certification path
validation is necessary for a relying party to make an informed decision
regarding acceptance of an end entity certificate. Certification path
validation includes checks such as certificate issuer trust, time validity, and
revocation status for each certificate in the certification path. Revocation
status information for CA and subject certificates in a certification path is
commonly provided via certificate revocation lists (CRLs) or online certificate
status protocol (OCSP) responses."
  desc  'rationale', ''
  desc  'check', "
    In a command line, run \"httpd -M | grep -i ssl_module\".

    If the \"ssl_module\" is not enabled, this is a finding.

    Determine the location of the \"HTTPD_ROOT\" directory and the \"ssl.conf\"
file:

    # httpd -V | egrep -i 'httpd_root|server_config_file'
    -D HTTPD_ROOT=\"/etc/httpd\"

    Review <'HTTPD_ROOT'>/conf.d/ssl.conf

    Verify \"SSLVerifyClient\" is set to \"require\":

    SSLVerifyClient require

    Verify \"SSLVerifyDepth\" is set to a number greater than \"0\":

    SSLVerifyDepth 1

    If \"SSLVerifyClient\" is not set to \"require\" or \"SSLVerifyDepth\" is
not set to a number greater than \"0\", this is a finding.
  "
  desc 'fix', "
    Determine the location of the \"HTTPD_ROOT\" directory and the \"ssl.conf\"
file:

    # httpd -V | egrep -i 'httpd_root|server_config_file'
    -D HTTPD_ROOT=\"/etc/httpd\"

    Edit <'HTTPD_ROOT'>/conf.d/ssl.conf

    Set \"SSLVerifyClient\" to \"require\".

    Set \"SSLVerifyDepth\" to \"1\".

    SSLVerifyDepth 1

    For more information:
https://httpd.apache.org/docs/current/mod/ssl_module.html
  "
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000175-WSR-000095'
  tag gid: 'V-92785'
  tag rid: 'SV-102873r1_rule'
  tag stig_id: 'AS24-U2-000380'
  tag fix_id: 'F-99029r1_fix'
  tag cci: ['CCI-000185']
  tag nist: ['IA-5 (2) (a)']

  config_path = input('config_path')
  ssl_module = command('httpd -M | grep -i ssl_module').stdout

  describe ssl_module do
    it { should include 'ssl_module' }
  end

  describe apache_conf(config_path) do
    its('SSLVerifyClient') { should_not be_nil }
  end

  unless apache_conf(config_path).SSLVerifyClient.nil?
    apache_conf(config_path).SSLVerifyClient.each do |value|
      describe 'SSLVerifyClient should be set to require' do
        subject { value }
        it { should cmp 'require' }
      end
    end
  end

  describe apache_conf(config_path) do
    its('SSLVerifyDepth') { should_not be_nil }
  end

  unless apache_conf(config_path).SSLVerifyDepth.nil?
    apache_conf(config_path).SSLVerifyDepth.each do |value|
      describe 'SSLVerifyDepth should be set to 1' do
        subject { value }
        it { should cmp > 0 }
      end
    end
  end
end
