#!/bin/bash
# Function to deal with architecture specific VSIXPackages
arch_vsix () {
  ARCH=$VER
  VER=$NAME
  NAME=$(basename $(dirname $(dirname $BASEDIR)))
  echo "Extracting $NAME-$VER-$ARCH.vsix"
  cp $line $NAME-$VER-$ARCH.vsix
}

# Process the directory for VSIXPackages
while read -r line; do
  # echo -e "\nProcessing $line"
  BASEDIR=$(dirname $line)
  NAME=$(basename $(dirname $BASEDIR))
  VER=$(basename $BASEDIR)

  # Sift out the architecture specific VSIXPackages
  case $VER in
    "linux-x64")    arch_vsix;;
    "linux-arm64")  arch_vsix;;
    "linux-armhf")  arch_vsix;;
    "darwin-x64")   arch_vsix;;
    "darwin-arm64") arch_vsix;;
    "alpine-x64")   arch_vsix;;
    "alpine-arm64") arch_vsix;;
    "win32-x64")    arch_vsix;;
    "win32-arm64")  arch_vsix;;
    "web")          arch_vsix;;
    *)
      echo "Extracting $NAME-$VER.vsix"
      cp $line $NAME-$VER.vsix
      ;;
  esac
done < <(find -L $1 -name "*.VSIXPackage"
