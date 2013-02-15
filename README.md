Sample App for mdevcon
================

This repo contains a sample iOS app plus tests. It accompanies the Mobile Acceptance Testing tutorial at [mdevcon 2013](http://mdevcon.com)


Setup Instructions
=====

Because we'll be testing an iOS application you will need a mac laptop with XCode installed. These instructions assume basic familiarity with the terminal. 

First you'll need to download this repo. You can do that from the terminal using the following commands:

``` bash
mkdir ~/mdevcon-workshop
cd ~/mdevcon-workshop
git clone https://github.com/moredip/mdevcon-workshop.git ./
```

Next you'll need to install a ruby gem called frank-cucumber (a *gem* is a packaged ruby library). You can do that using the following caommand:
``` bash
sudo gem install frank-cucumber
```

If you're using a system like [rvm](https://rvm.io/rvm/install/) or [rbenv](https://github.com/sstephenson/rbenv/#installation) to manage the ruby setup on your machine (and I recommend that you do) then you probably won't need to use sudo in that command.