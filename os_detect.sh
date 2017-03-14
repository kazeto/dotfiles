#! /usr/bin/bash

## Thanks to: http://qiita.com/b4b4r07/items/09815eda8ef72e0b472e

# ostype returns the lowercase OS name
ostype() {
    uname | tr "[:upper:]" "[:lower:]"
}

# os_detect export the PLATFORM variable as you see fit
os_detect() {
    case "$(ostype)" in
	*'linux'*)  PLATFORM='linux'   ;;
	*'darwin'*) PLATFORM='osx'     ;;
	*'bsd'*)    PLATFORM='bsd'     ;;
	*)          PLATFORM='unknown' ;;
    esac
    export PLATFORM
}

# is_osx returns true if running OS is Macintosh
is_osx() {
    os_detect
    if [ "$PLATFORM" = "osx" ]; then
	return 0
    else
	return 1
    fi
}

