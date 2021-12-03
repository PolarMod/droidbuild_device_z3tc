setup_target z3tc

target_z3tc(){
    LOCAL_PATH=$(dirname $BASH_SOURCE)
    # Clean build variables
    include $BASEDIR/droidbuild/build_vars.sh
    # As we would need to download some external sources for z3tc we
    # would need to re-sync local manifests
    TARGET_NEEDS_RESYNC=true
    # Add manifests
    TARGET_LOCAL_MANIFESTS+=$LOCAL_PATH/manifests/z3tc.xml
    # Set device bitness
    TARGET_ARCH_BITNESS=32
    # Add directories that would be cleaned after build succeeds
    TARGET_USE_DIRS=(
      $BASEDIR/device/sony
      $BASEDIR/vendor/sony
      $BASEDIR/kernel/sony
    )
    # Codename of device
    TARGET_CODENAME="z3tc"
    # Fully qualified model name
    TARGET_FULLNAME="Sony Xperia Z3 Tablet Compact"
    # Build type
    TARGET_BUILDTYPE="userdebug"
    # Sign build
    TARGET_SIGNED_BUILD=true
    # Call build
    target_build-device
}

# Currently dummy droidbuld target is required
droidbuild_module(){
    info "Droidbuild for z3tc called"  
}
