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

Once you've done that you should be able to run the `frank` command in the terminal, and get output something like this:
```
⋙ frank
Tasks:
  frank build             # builds a Frankified version of your native app
  frank build_and_launch  # rebuild a Frankfied version of your app then ...
  frank console           # launch a ruby console connected to your Frank...
  frank help [TASK]       # Describe available tasks or one specific task
  frank inspect           # launch Symbiote in the browser
  frank launch            # open the Frankified app in the simulator
  frank setup             # set up your iOS app by adding a Frank subdire...
  frank skeleton          # an alias for setup
  frank update            # updates the frank server components inside yo...

```

At this point you're all set up. To double-check everything you can run the `check-setup` script to confirm that you have everything ready:

```
./check-setup

Checking your Frank setup...
using Frank to build the app...
using Frank to launch the app...
verifying we can talk to the Frankified app...
...everything looks good.
```

If there are any problems along the way please feel free to get in touch and ask me for help: phodgson@thoughtworks.com
