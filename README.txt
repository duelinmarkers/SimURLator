SimURLator
----------

SimURLator is an iPhone development tool for manual iPhone Simulator 
testing of your app's integration with other iPhone apps via 
UIApplication's openURL:.


Testing Your Calls to openURL:
------------------------------

Grab the code. Edit SimURLator-Info.plist. Add or remove URL Schemes 
(values for the key CFBundleURLSchemes) matching those of the 
application(s) you want to test integration with. Deploy to the 
iPhone Simulator. Now run your app in the Simulator. When your app 
calls openURL:, SimURLator will launch and show you the exact URL it
was passed.

Here's the section of SimURLator-Info.plist you should modify:

  <key>CFBundleURLTypes</key>
  <array>
    <dict>
      <key>CFBundleURLSchemes</key>
      <array>
        <string>tweetie</string>
        <string>twitterfon</string>
        <string>twitterrific</string>
      </array>
      <key>CFBundleURLName</key>
      <string>com.thoughtworks.simurlator</string>
    </dict>
  </array>

If you're using XCode, note that it will probably label these keys 
"URL types," "URL Schemes," and "URL name."


Testing Your Handling of Other Apps' calls to openURL:
------------------------------------------------------

Build and deploy your app and SimURLator to the iPhone Simulator.
Run SimURLator. Enter a URL using the scheme that your app is
registered to handle. Tap the "Check URL" button to see that the OS 
reports the URL can be opened. Tap the "Open URL" button to launch 
your app with the URL.


