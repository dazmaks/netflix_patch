# Netflix HD Patch APK

**FOR EDUCATIONAL PURPOSE ONLY**

Patched Netflix App for Android enabling Widevine L1 allowing not certified devices to play HD

## Prerequisites

```bash
sudo apt install apktool zip unzip zipalign patch
```

## Step by step guide:

- Clone this repo
- Download [Netflix 4.16.3](https://www.apkmirror.com/apk/netflix-inc/netflix/netflix-4-16-3-build-15172-release/), rename to `netflix.apk`
- Open `Terminal`
- Run 
```bash
chmod +x patch.sh adbinstall.sh signapk.sh
./patch.sh
```
- Install `signed_netflix.apk` OR allow debugging on your phone, plug your phone in and run
```bash
./adbinstall.sh signed_netflix.apk
```

## Notes:

- To generate patch file, run this

```bash
diff -ruN orig/ new/ > file.patch
# -r == recursive, so do subdirectories
# -u == unified style, if your system lacks it or if recipient
#       may not have it, use "-c"
# -N == treat absent files as empty
```

## Disclaimer

FOR EDUCATIONAL PURPOSE ONLY. I AM NOT RESPONSIBLE FOR ANYTHING
