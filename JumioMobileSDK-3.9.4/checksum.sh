cd zips

echo BAMCheckout: $(swift package compute-checksum BAMCheckout.zip)
echo DocumentVerification: $(swift package compute-checksum DocumentVerification.zip)
echo iProov: $(swift package compute-checksum iProov.zip)
echo JumioCore: $(swift package compute-checksum JumioCore.zip)
echo JumioIProov: $(swift package compute-checksum JumioIProov.zip)
echo JumioNFC: $(swift package compute-checksum JumioNFC.zip)
echo Microblink: $(swift package compute-checksum Microblink.zip)
echo Netverify: $(swift package compute-checksum Netverify.zip)
echo NetverifyBarcode: $(swift package compute-checksum NetverifyBarcode.zip)
echo SocketIO: $(swift package compute-checksum SocketIO.zip)
echo Starscream: $(swift package compute-checksum Starscream.zip)
