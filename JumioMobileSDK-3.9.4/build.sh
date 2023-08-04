carthage update

mkdir -p xcframeworks

cd Carthage/Build/iOS
mkdir -p ios-arm64-iphoneos
mkdir -p ios-arm64_x86_64-simulator

#
#
# BAMCheckout.framework
cp -R BAMCheckout.framework/ ios-arm64-iphoneos/BAMCheckout.framework
cp -R BAMCheckout.framework/ ios-arm64_x86_64-simulator/BAMCheckout.framework

xcrun lipo -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/BAMCheckout.framework/BAMCheckout -o ./ios-arm64-iphoneos/BAMCheckout.framework/BAMCheckout
xcrun lipo -remove armv7 ./ios-arm64_x86_64-simulator/BAMCheckout.framework/BAMCheckout -o ./ios-arm64_x86_64-simulator/BAMCheckout.framework/BAMCheckout
xcrun lipo -i ios-arm64-iphoneos/BAMCheckout.framework/BAMCheckout
xcrun lipo -i ios-arm64_x86_64-simulator/BAMCheckout.framework/BAMCheckout

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/BAMCheckout.framework/BAMCheckout ./ios-arm64_x86_64-simulator/BAMCheckout.framework/BAMCheckout
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/BAMCheckout.framework/BAMCheckout
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/BAMCheckout.framework/BAMCheckout

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/BAMCheckout.framework/ -framework ios-arm64_x86_64-simulator/BAMCheckout.framework/ -output ../../../xcframeworks/BAMCheckout.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/BAMCheckout.xcframework/ios-arm64_x86_64-simulator/BAMCheckout.framework/BAMCheckout
xcrun dwarfdump --uuid ../../../xcframeworks/BAMCheckout.xcframework/ios-arm64/BAMCheckout.framework/BAMCheckout

#
#
# DocumentVerification.framework
cp -R DocumentVerification.framework/ ios-arm64-iphoneos/DocumentVerification.framework
cp -R DocumentVerification.framework/ ios-arm64_x86_64-simulator/DocumentVerification.framework

xcrun lipo -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/DocumentVerification.framework/DocumentVerification -o ./ios-arm64-iphoneos/DocumentVerification.framework/DocumentVerification
xcrun lipo -remove armv7 ./ios-arm64_x86_64-simulator/DocumentVerification.framework/DocumentVerification -o ./ios-arm64_x86_64-simulator/DocumentVerification.framework/DocumentVerification
xcrun lipo -i ios-arm64-iphoneos/DocumentVerification.framework/DocumentVerification
xcrun lipo -i ios-arm64_x86_64-simulator/DocumentVerification.framework/DocumentVerification

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/DocumentVerification.framework/DocumentVerification ./ios-arm64_x86_64-simulator/DocumentVerification.framework/DocumentVerification
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/DocumentVerification.framework/DocumentVerification
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/DocumentVerification.framework/DocumentVerification

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/DocumentVerification.framework/ -framework ios-arm64_x86_64-simulator/DocumentVerification.framework/ -output ../../../xcframeworks/DocumentVerification.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/DocumentVerification.xcframework/ios-arm64_x86_64-simulator/DocumentVerification.framework/DocumentVerification
xcrun dwarfdump --uuid ../../../xcframeworks/DocumentVerification.xcframework/ios-arm64/DocumentVerification.framework/DocumentVerification

#
#
# iProov.framework
cp -R iProov.framework/ ios-arm64-iphoneos/iProov.framework
cp -R iProov.framework/ ios-arm64_x86_64-simulator/iProov.framework

xcrun lipo -remove i386 -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/iProov.framework/iProov -o ./ios-arm64-iphoneos/iProov.framework/iProov
xcrun lipo -remove i386 -remove armv7 ./ios-arm64_x86_64-simulator/iProov.framework/iProov -o ./ios-arm64_x86_64-simulator/iProov.framework/iProov
xcrun lipo -i ios-arm64-iphoneos/iProov.framework/iProov
xcrun lipo -i ios-arm64_x86_64-simulator/iProov.framework/iProov

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/iProov.framework/iProov ./ios-arm64_x86_64-simulator/iProov.framework/iProov
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/iProov.framework/iProov
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/iProov.framework/iProov

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/iProov.framework/ -framework ios-arm64_x86_64-simulator/iProov.framework/ -output ../../../xcframeworks/iProov.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/iProov.xcframework/ios-arm64_x86_64-simulator/iProov.framework/iProov
xcrun dwarfdump --uuid ../../../xcframeworks/iProov.xcframework/ios-arm64/iProov.framework/iProov

#
#
# JumioCore.framework
cp -R JumioCore.framework/ ios-arm64-iphoneos/JumioCore.framework
cp -R JumioCore.framework/ ios-arm64_x86_64-simulator/JumioCore.framework

xcrun lipo -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/JumioCore.framework/JumioCore -o ./ios-arm64-iphoneos/JumioCore.framework/JumioCore
xcrun lipo -remove armv7 ./ios-arm64_x86_64-simulator/JumioCore.framework/JumioCore -o ./ios-arm64_x86_64-simulator/JumioCore.framework/JumioCore
xcrun lipo -i ios-arm64-iphoneos/JumioCore.framework/JumioCore
xcrun lipo -i ios-arm64_x86_64-simulator/JumioCore.framework/JumioCore

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/JumioCore.framework/JumioCore ./ios-arm64_x86_64-simulator/JumioCore.framework/JumioCore
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/JumioCore.framework/JumioCore
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/JumioCore.framework/JumioCore

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/JumioCore.framework/ -framework ios-arm64_x86_64-simulator/JumioCore.framework/ -output ../../../xcframeworks/JumioCore.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/JumioCore.xcframework/ios-arm64_x86_64-simulator/JumioCore.framework/JumioCore
xcrun dwarfdump --uuid ../../../xcframeworks/JumioCore.xcframework/ios-arm64/JumioCore.framework/JumioCore

#
#
# JumioIProov.framework
cp -R JumioIProov.framework/ ios-arm64-iphoneos/JumioIProov.framework
cp -R JumioIProov.framework/ ios-arm64_x86_64-simulator/JumioIProov.framework

xcrun lipo -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/JumioIProov.framework/JumioIProov -o ./ios-arm64-iphoneos/JumioIProov.framework/JumioIProov
xcrun lipo -remove armv7 ./ios-arm64_x86_64-simulator/JumioIProov.framework/JumioIProov -o ./ios-arm64_x86_64-simulator/JumioIProov.framework/JumioIProov
xcrun lipo -i ios-arm64-iphoneos/JumioIProov.framework/JumioIProov
xcrun lipo -i ios-arm64_x86_64-simulator/JumioIProov.framework/JumioIProov

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/JumioIProov.framework/JumioIProov ./ios-arm64_x86_64-simulator/JumioIProov.framework/JumioIProov
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/JumioIProov.framework/JumioIProov
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/JumioIProov.framework/JumioIProov

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/JumioIProov.framework/ -framework ios-arm64_x86_64-simulator/JumioIProov.framework/ -output ../../../xcframeworks/JumioIProov.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/JumioIProov.xcframework/ios-arm64_x86_64-simulator/JumioIProov.framework/JumioIProov
xcrun dwarfdump --uuid ../../../xcframeworks/JumioIProov.xcframework/ios-arm64/JumioIProov.framework/JumioIProov

#
#
# JumioNFC.framework
cp -R JumioNFC.framework/ ios-arm64-iphoneos/JumioNFC.framework
cp -R JumioNFC.framework/ ios-arm64_x86_64-simulator/JumioNFC.framework

xcrun lipo -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/JumioNFC.framework/JumioNFC -o ./ios-arm64-iphoneos/JumioNFC.framework/JumioNFC
xcrun lipo -remove armv7 ./ios-arm64_x86_64-simulator/JumioNFC.framework/JumioNFC -o ./ios-arm64_x86_64-simulator/JumioNFC.framework/JumioNFC
xcrun lipo -i ios-arm64-iphoneos/JumioNFC.framework/JumioNFC
xcrun lipo -i ios-arm64_x86_64-simulator/JumioNFC.framework/JumioNFC

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/JumioNFC.framework/JumioNFC ./ios-arm64_x86_64-simulator/JumioNFC.framework/JumioNFC
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/JumioNFC.framework/JumioNFC
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/JumioNFC.framework/JumioNFC

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/JumioNFC.framework/ -framework ios-arm64_x86_64-simulator/JumioNFC.framework/ -output ../../../xcframeworks/JumioNFC.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/JumioNFC.xcframework/ios-arm64_x86_64-simulator/JumioNFC.framework/JumioNFC
xcrun dwarfdump --uuid ../../../xcframeworks/JumioNFC.xcframework/ios-arm64/JumioNFC.framework/JumioNFC

#
#
# Microblink.framework
cp -R Microblink.framework/ ios-arm64-iphoneos/Microblink.framework
cp -R Microblink.framework/ ios-arm64_x86_64-simulator/Microblink.framework

xcrun lipo -remove i386 -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/Microblink.framework/Microblink -o ./ios-arm64-iphoneos/Microblink.framework/Microblink
xcrun lipo -remove i386 -remove armv7 ./ios-arm64_x86_64-simulator/Microblink.framework/Microblink -o ./ios-arm64_x86_64-simulator/Microblink.framework/Microblink
xcrun lipo -i ios-arm64-iphoneos/Microblink.framework/Microblink
xcrun lipo -i ios-arm64_x86_64-simulator/Microblink.framework/Microblink

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/Microblink.framework/Microblink ./ios-arm64_x86_64-simulator/Microblink.framework/Microblink
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/Microblink.framework/Microblink
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/Microblink.framework/Microblink

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/Microblink.framework/ -framework ios-arm64_x86_64-simulator/Microblink.framework/ -output ../../../xcframeworks/Microblink.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/Microblink.xcframework/ios-arm64_x86_64-simulator/Microblink.framework/Microblink
xcrun dwarfdump --uuid ../../../xcframeworks/Microblink.xcframework/ios-arm64/Microblink.framework/Microblink

#
#
# Netverify.framework
cp -R Netverify.framework/ ios-arm64-iphoneos/Netverify.framework
cp -R Netverify.framework/ ios-arm64_x86_64-simulator/Netverify.framework

xcrun lipo -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/Netverify.framework/Netverify -o ./ios-arm64-iphoneos/Netverify.framework/Netverify
xcrun lipo -remove armv7 ./ios-arm64_x86_64-simulator/Netverify.framework/Netverify -o ./ios-arm64_x86_64-simulator/Netverify.framework/Netverify
xcrun lipo -i ios-arm64-iphoneos/Netverify.framework/Netverify
xcrun lipo -i ios-arm64_x86_64-simulator/Netverify.framework/Netverify

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/Netverify.framework/Netverify ./ios-arm64_x86_64-simulator/Netverify.framework/Netverify
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/Netverify.framework/Netverify
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/Netverify.framework/Netverify

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/Netverify.framework/ -framework ios-arm64_x86_64-simulator/Netverify.framework/ -output ../../../xcframeworks/Netverify.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/Netverify.xcframework/ios-arm64_x86_64-simulator/Netverify.framework/Netverify
xcrun dwarfdump --uuid ../../../xcframeworks/Netverify.xcframework/ios-arm64/Netverify.framework/Netverify

#
#
# NetverifyBarcode.framework
cp -R NetverifyBarcode.framework/ ios-arm64-iphoneos/NetverifyBarcode.framework
cp -R NetverifyBarcode.framework/ ios-arm64_x86_64-simulator/NetverifyBarcode.framework

xcrun lipo -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/NetverifyBarcode.framework/NetverifyBarcode -o ./ios-arm64-iphoneos/NetverifyBarcode.framework/NetverifyBarcode
xcrun lipo -remove armv7 ./ios-arm64_x86_64-simulator/NetverifyBarcode.framework/NetverifyBarcode -o ./ios-arm64_x86_64-simulator/NetverifyBarcode.framework/NetverifyBarcode
xcrun lipo -i ios-arm64-iphoneos/NetverifyBarcode.framework/NetverifyBarcode
xcrun lipo -i ios-arm64_x86_64-simulator/NetverifyBarcode.framework/NetverifyBarcode

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/NetverifyBarcode.framework/NetverifyBarcode ./ios-arm64_x86_64-simulator/NetverifyBarcode.framework/NetverifyBarcode
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/NetverifyBarcode.framework/NetverifyBarcode
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/NetverifyBarcode.framework/NetverifyBarcode

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/NetverifyBarcode.framework/ -framework ios-arm64_x86_64-simulator/NetverifyBarcode.framework/ -output ../../../xcframeworks/NetverifyBarcode.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/NetverifyBarcode.xcframework/ios-arm64_x86_64-simulator/NetverifyBarcode.framework/NetverifyBarcode
xcrun dwarfdump --uuid ../../../xcframeworks/NetverifyBarcode.xcframework/ios-arm64/NetverifyBarcode.framework/NetverifyBarcode

#
#
# SocketIO.framework
cp -R SocketIO.framework/ ios-arm64-iphoneos/SocketIO.framework
cp -R SocketIO.framework/ ios-arm64_x86_64-simulator/SocketIO.framework

xcrun lipo -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/SocketIO.framework/SocketIO -o ./ios-arm64-iphoneos/SocketIO.framework/SocketIO
xcrun lipo -remove armv7 ./ios-arm64_x86_64-simulator/SocketIO.framework/SocketIO -o ./ios-arm64_x86_64-simulator/SocketIO.framework/SocketIO
xcrun lipo -i ios-arm64-iphoneos/SocketIO.framework/SocketIO
xcrun lipo -i ios-arm64_x86_64-simulator/SocketIO.framework/SocketIO

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/SocketIO.framework/SocketIO ./ios-arm64_x86_64-simulator/SocketIO.framework/SocketIO
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/SocketIO.framework/SocketIO
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/SocketIO.framework/SocketIO

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/SocketIO.framework/ -framework ios-arm64_x86_64-simulator/SocketIO.framework/ -output ../../../xcframeworks/SocketIO.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/SocketIO.xcframework/ios-arm64_x86_64-simulator/SocketIO.framework/SocketIO
xcrun dwarfdump --uuid ../../../xcframeworks/SocketIO.xcframework/ios-arm64/SocketIO.framework/SocketIO

#
#
# Starscream.framework
cp -R Starscream.framework/ ios-arm64-iphoneos/Starscream.framework
cp -R Starscream.framework/ ios-arm64_x86_64-simulator/Starscream.framework

xcrun lipo -remove x86_64 -remove armv7 ./ios-arm64-iphoneos/Starscream.framework/Starscream -o ./ios-arm64-iphoneos/Starscream.framework/Starscream
xcrun lipo -remove armv7 ./ios-arm64_x86_64-simulator/Starscream.framework/Starscream -o ./ios-arm64_x86_64-simulator/Starscream.framework/Starscream
xcrun lipo -i ios-arm64-iphoneos/Starscream.framework/Starscream
xcrun lipo -i ios-arm64_x86_64-simulator/Starscream.framework/Starscream

xcrun vtool -arch arm64 -set-build-version 7 10.0 14.4 -replace -output ./ios-arm64_x86_64-simulator/Starscream.framework/Starscream ./ios-arm64_x86_64-simulator/Starscream.framework/Starscream
xcrun vtool -arch arm64 -show ./ios-arm64-iphoneos/Starscream.framework/Starscream
xcrun vtool -arch arm64 -show ./ios-arm64_x86_64-simulator/Starscream.framework/Starscream

xcodebuild -create-xcframework -framework ios-arm64-iphoneos/Starscream.framework/ -framework ios-arm64_x86_64-simulator/Starscream.framework/ -output ../../../xcframeworks/Starscream.xcframework
xcrun dwarfdump --uuid ../../../xcframeworks/Starscream.xcframework/ios-arm64_x86_64-simulator/Starscream.framework/Starscream
xcrun dwarfdump --uuid ../../../xcframeworks/Starscream.xcframework/ios-arm64/Starscream.framework/Starscream
