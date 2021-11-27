target_z3tc(){
    # Clean build variables
    include $BASEDIR/droidbuild/build_vars.sh
    # As we would need to download some external sources for z3tc we
    # would need to re-sync local manifests
    TARGET_NEEDS_RESYNC=true
    # Add manifests
    TARGET_LOCAL_MANIFESTS+=$LOCAL_PATH/manifests/z3tc.xml
    # Set device bitess
    TARGET_ARCH_BITNESS=32
    # Add directories that would be cleaned after build succeeds
    TARGET_USE_DIRS=(
      $BASEDIR/device/sony
      $BASEDIR/vendor/sony
      $BASEDIR/kernel/sony
    )
    target_build-device
}
# Currently dummy droidbuld target is required
droidbuild(){
  
}
