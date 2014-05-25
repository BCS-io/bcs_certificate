require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'bcs_certificate::test' do
    describe 'signed certificate' do
      describe 'certificate' do
        describe file'/root/ssl/certs' do
          it { should be_directory }
        end

        describe file'/root/ssl/certs/ssl_certificate.crt' do
          it { should be_file }
          it { should be_mode 644 }
          it { should be_owned_by 'root' }
          it { should be_grouped_into 'root' }
        end
      end
      describe 'key' do
        describe file'/root/ssl/private' do
          it { should be_directory }
        end

        describe file'/root/ssl/private/ssl_key.key' do
          it { should be_file }
          it { should be_mode 640 }
          it { should be_owned_by 'root' }
          it { should be_grouped_into 'root' }
        end
      end
    end
end
