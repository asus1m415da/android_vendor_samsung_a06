#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):89128960:454621b3ce8c43f78b256be668f1a143baf47cf6; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):67108864:91a8e139d4047e5a4324134ea22b969549a4f43c \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):89128960:454621b3ce8c43f78b256be668f1a143baf47cf6 && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

