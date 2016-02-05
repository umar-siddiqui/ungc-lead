## ungc-lead
# self assessment

For pdf download feature

Install wickedpdf
http://xfloyd.net/blog/?p=745

Steps:

1. At first install xvfb serwer:
    sudo apt-get install xvfb
2. Get needed version of wkhtmltopdf from http://wkhtmltopdf.org/downloads.html.For Ubuntu 14.04 64-bit:
    wget http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
3. Install wkhtmltopdf:
    sudo dpkg -i wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
4. Install dependency (if needed):
    sudo apt-get -f install
5. Create symblic link in /usr/local/bin/: (OPTIONAL)
    echo 'exec xvfb-run -a -s "-screen 0 640x480x16" wkhtmltopdf "$@"' | sudo tee /usr/local/bin/wkhtmltopdf.sh >/dev/null
    sudo chmod a+x /usr/local/bin/wkhtmltopdf.sh

Install redis
    https://www.digitalocean.com/community/tutorials/how-to-configure-a-redis-cluster-on-ubuntu-14-04
