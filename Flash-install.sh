#test script
#!/bin/bash
     
    ## Adobe Repository 64-bit x86_64 ##
    rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
     
    yum install devilspie flash-plugin
    su -c "touch ~/.devilspie/flash-fullscreen-firefox.ds" gaaara
    su -c " mkdir ~/.devilspie" gaaara
    
     
    su -c "cat <<'EOF' > ~/.devilspie
    (if
    (is (application_name) "plugin-container")
    (begin
    (focus)
    )
    )
    EOF
    " gaaara
     
    cat <<'EOF' > /???/devilspie0032.sh
    #!/bin/sh
    /usr/bin/devilspie
    EOF
     
    chmod a+x /???/devilspie0032.sh

