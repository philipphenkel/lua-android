#!/bin/bash

echo "Building lua libraries"

if [ -e ../module ] ; 
then 
	rm -rf ../module 
fi

mkdir ../module
cp ImportModule.mk ../module/Android.mk

mkdir ../module/include
for header in lua.h luaconf.h lualib.h lauxlib.h; 
do
	cp jni/lua-5.1.4/src/$header ../module/include
done

mkdir ../module/lib

for abi in armeabi armeabi-v7a; 
do
	ndk-build NDK_DEBUG=1 APP_ABI=$abi
	ndk-build NDK_DEBUG=0 APP_ABI=$abi
	
	mkdir ../module/lib/$abi
	cp obj/local/$abi/*.a ../module/lib/$abi
done

echo ""
echo "Build successful!"
