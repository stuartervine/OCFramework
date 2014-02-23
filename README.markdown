## OCFramework - create iOS frameworks easily

OCFramework is a simple template to help you create compilable binaries that can be imported as frameworks into your iOS projects.

#Usage

Just clone the repo, then run the following:

    ./setup.sh MyNewFramework

Then

    cd ../MyNewFramework
    ./build.sh release

All done. The framework is output in the artifacts directory. Enjoy.

#Alternatives

There are a number of other ways to create frameworks for iOS, Jeff Verkoeyen has explained these is detail on his iOS-Framework project: https://github.com/jverkoey/iOS-Framework

He shows the details required to create a framework in Xcode for iOS by hand, and the 'Fake' approach.
