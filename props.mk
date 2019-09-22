# Rendering
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.display.clearMotion=1 \
    ro.mtk_deinterlace_support=1 \
    ro.mtk_pq_support=2 \
    ro.opengles.version=196609 \
    ro.sf.lcd_density=480 \
    sys.display-size=1920x1080 \
    wfd.dummy.enable=1

# Storage
PRODUCT_PROPERTY_OVERRIDES += ro.sys.sdcardfs=false

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true \
    ro.camera.sound.forced=0

# DRM
PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true

# Audio
PRODUCT_PROPERTY_OVERRIDES += persist.audio.dirac.speaker=true

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.mtk.wcn.combo.chipid=-1 \
    persist.radio.fd.counter=15 \
    persist.radio.fd.off.counter=5 \
    persist.radio.fd.off.r8.counter=5 \
    persist.radio.fd.r8.counter=15 \
    persist.radio.multisim.config=dsds \
    ril.current.share_modem=2 \
    ril.external.md=0 \
    ril.telephony.mode=0 \
    rild.libpath=/vendor/lib64/mtk-ril.so \
    ro.mtk_enable_md1=1 \
    ro.mtk_flight_mode_power_off_md=1 \
    ro.mtk_md_sbp_custom_value=1 \
    ro.mtk_rild_read_imsi=1 \
    ro.mtk_world_phone=1 \
    ro.telephony.default_network=9 \
    ro.telephony.ril.config=fakeiccid \
    ro.telephony.ril_class=MediaTekRIL \
    ro.telephony.sim.count=2

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += wifi.interface=wlan0

# ADB
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PROPERTY_OVERRIDES += persist.sys.usb.config=adb
endif
