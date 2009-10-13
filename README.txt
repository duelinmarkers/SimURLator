SimURLator
----------

SimURLator is an iPhone development tool for manual iPhone Simulator 
testing of your app's integration with other iPhone apps via 
UIApplication's openURL:.

Basically it stands in for the third-party applications you can't 
install in the iPhone simulator and allows you to manually validate 
that things should work once you install your app on a device with 
those third-party apps.

It works in both directions: 
* If your app supports some URL scheme of its own, SimURLator will 
  let you type it in, validate that the OS agrees it can be opened, 
  and launch your app. 
* If your app tries to launch some third-party app using its URL 
  scheme, you can configure SimURLator to register that scheme in 
  the Simulator so you can see that the URL you're building looks 
  the way you expect.


Testing Your App's URL Handling
-------------------------------

Build and deploy your app and SimURLator to the iPhone Simulator.
Run SimURLator. Enter a URL using the scheme that your app is
registered to handle. Tap the "Check URL" button to see that the OS 
reports the URL can be opened. Tap the "Open URL" button to launch 
your app with the URL.


Testing Your Calls to openURL:
------------------------------

Grab the code. Edit SimURLator-Info.plist. Add or remove URL Schemes 
(values for the key CFBundleURLSchemes) to match those of the 
application(s) you want to test integration with. Deploy to the 
iPhone Simulator. Now run your app in the Simulator. When your app 
calls openURL:, SimURLator will launch and show you the exact URL it
was passed.

Here's the section of SimURLator-Info.plist you should modify:

  ...
  <key>CFBundleURLTypes</key>
  <array>
    <dict>
      <key>CFBundleURLSchemes</key>
      <array>
        <string>tweetie</string>
        <string>twitterfon</string>
        <string>twitterrific</string>
      </array>
      ...

If you're using XCode, note that it will probably label those keys 
"URL types" and "URL Schemes."


---

Copyright 2009 ThoughtWorks, Inc. See License.txt for licensing info.