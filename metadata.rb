name             'bcs_certificate'
maintainer       'Richard Wigley'
maintainer_email 'richard.wigley@github'
license          'All rights reserved'
description      'Installs/Configures bcs_certificate'
long_description 'Installs/Configures bcs_certificate'
version          '0.1.0'

%w{ ubuntu }.each do |os|
    supports os
end

%w{ certificate }.each do |cookbook|
  depends cookbook
end