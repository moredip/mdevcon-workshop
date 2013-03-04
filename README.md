Sample App for mdevcon
================

This repo contains a sample iOS app plus tests. It accompanies the Mobile Acceptance Testing tutorial at [mdevcon 2013](http://mdevcon.com)

Because we'll be testing an iOS application you will need a mac laptop ***with XCode and [XCode command-line tools](http://stackoverflow.com/questions/9329243/xcode-4-4-command-line-tools) installed***.

We'll be using the ruby programming language plus a tool called Frank to automate this sample application. It is strongly 
recommended that you use a system like [rvm](https://rvm.io/rvm/install/) or [rbenv](https://github.com/sstephenson/rbenv/#installation)  to manage the ruby setup on your laptop.
While OS X does come with a default ruby configuration it has some issues which make it a bit harder to use.
Both rvm and rbenv are fairly easy to setup. For an even simpler option you can use the [Rails Installer](http://railsinstaller.org/). This will set you up with rvm (along with a bunch of other useful tools).

Setup Instructions
=====

These instructions assume basic familiarity with the terminal. 

First you'll need to download this repo. You can do that from the terminal using the following commands:

``` bash
mkdir ~/mdevcon-workshop
cd ~/mdevcon-workshop
git clone https://github.com/moredip/mdevcon-workshop.git ./
```

Next you'll need to install a couple of ruby gems (a *gem* is a packaged ruby library). You can do that using the following command:
``` bash
sudo gem install frank-cucumber pry --no-rdoc --no-ri
```

You only need to the `sudo` part if you're using the default ruby install. If you're using rvm or rbenv you can leave that part off.

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
