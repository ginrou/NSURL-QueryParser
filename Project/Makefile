PROJECT = NSURL+QueryParser/NSURL+QueryParser.xcodeproj
SCHEME = NSURL+QueryParser

clean:
	xcodebuild -project $(PROJECT) clean

test:
	xcodebuild \
	-project $(PROJECT) \
	-scheme $(SCHEME) \
	-configuration Debug \
	-sdk iphonesimulator7.0 \
	ONLY_ACTIVE_ARCH=YES \
	clean build test
