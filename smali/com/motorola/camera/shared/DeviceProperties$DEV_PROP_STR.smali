.class public final enum Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum BUILD_CHARACTERISTICS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum CAMERA_SWITCH_MODE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum CAMERA_VARIANT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum CARRIER_INFO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum HARDWARE_RADIO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_BRAND:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_CANONICAL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY_VENDOR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY_VENDOR_TEXT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_IS_PRC:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_IS_WHITE_LABEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_KEY_CPU_ABILIST64:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PROPERTY_KEY_CUSTOMERID:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PROPERTY_KEY_IS_PRODUCTION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PROPERTY_KEY_REGION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum QCOM_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum RELEASE_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum ROOTED_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum SOC_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum TARGET_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum TARGET_DEVICE_FALLBACK:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;


# instance fields
.field public mSet:Z

.field public final mSystemProperty:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v0, 0x0

    const-string/jumbo v2, "ro.camera.storage.default"

    const-string v3, "DEFAULT_STORAGE_LOC"

    invoke-direct {v1, v3, v0, v2}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v0, 0x1

    const-string/jumbo v3, "persist.qe"

    const-string v4, "ROOTED_DEVICE"

    invoke-direct {v2, v4, v0, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->ROOTED_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v0, 0x2

    const-string/jumbo v4, "ro.product.device"

    const-string v5, "TARGET_DEVICE"

    invoke-direct {v3, v5, v0, v4}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->TARGET_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v0, 0x3

    const-string/jumbo v5, "ro.product.device.canonical"

    const-string v6, "TARGET_DEVICE_FALLBACK"

    invoke-direct {v4, v6, v0, v5}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->TARGET_DEVICE_FALLBACK:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v0, 0x4

    const-string/jumbo v6, "ro.product.display"

    const-string v7, "PRODUCT_DISPLAY"

    invoke-direct {v5, v7, v0, v6}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v0, 0x5

    const-string/jumbo v7, "ro.vendor.product.display"

    const-string v8, "PRODUCT_DISPLAY_VENDOR"

    invoke-direct {v6, v8, v0, v7}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v0, 0x6

    const-string/jumbo v8, "ro.vendor.product.display.plain_text"

    const-string v9, "PRODUCT_DISPLAY_VENDOR_TEXT"

    invoke-direct {v7, v9, v0, v8}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR_TEXT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v8, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v0, 0x7

    const-string/jumbo v9, "ro.product.model"

    const-string v10, "PRODUCT_DISPLAY_MODEL"

    invoke-direct {v8, v10, v0, v9}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v0, 0x8

    const-string/jumbo v10, "ro.product.white_label"

    const-string v11, "PRODUCT_IS_WHITE_LABEL"

    invoke-direct {v9, v11, v0, v10}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_IS_WHITE_LABEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v10, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v0, 0x9

    const-string/jumbo v11, "ro.product.brand"

    const-string v12, "PRODUCT_BRAND"

    invoke-direct {v10, v12, v0, v11}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_BRAND:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v11, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v0, 0xa

    const-string/jumbo v12, "ro.product.manufacturer"

    const-string v13, "PRODUCT_MANUFACTURER"

    invoke-direct {v11, v13, v0, v12}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v12, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v0, 0xb

    const-string/jumbo v13, "ro.product.is_prc"

    const-string v14, "PRODUCT_IS_PRC"

    invoke-direct {v12, v14, v0, v13}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_IS_PRC:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v13, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v0, 0xc

    const-string/jumbo v14, "ro.build.version.qcom"

    const-string v15, "QCOM_VERSION"

    invoke-direct {v13, v15, v0, v14}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->QCOM_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v14, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v0, 0xd

    const-string/jumbo v15, "ro.vendor.hw.radio"

    move-object/from16 v16, v1

    const-string v1, "HARDWARE_RADIO"

    invoke-direct {v14, v1, v0, v15}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_RADIO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v15, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v0, 0xe

    const-string/jumbo v1, "ro.boot.hardware.sku"

    move-object/from16 v17, v2

    const-string v2, "HARDWARE_SKU"

    invoke-direct {v15, v2, v0, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v1, 0xf

    const-string/jumbo v2, "ro.build.characteristics"

    move-object/from16 v18, v3

    const-string v3, "BUILD_CHARACTERISTICS"

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->BUILD_CHARACTERISTICS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v2, 0x10

    const-string v3, "camera.mot.switch"

    move-object/from16 v19, v0

    const-string v0, "CAMERA_SWITCH_MODE"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CAMERA_SWITCH_MODE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v2, 0x11

    const-string/jumbo v3, "ro.vendor.hw.cam_variant"

    move-object/from16 v20, v1

    const-string v1, "CAMERA_VARIANT"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CAMERA_VARIANT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v2, 0x12

    const-string/jumbo v3, "ro.build.version.release"

    move-object/from16 v21, v0

    const-string v0, "RELEASE_VERSION"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->RELEASE_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v2, 0x13

    const-string/jumbo v3, "ro.product.is_production"

    move-object/from16 v22, v1

    const-string v1, "PROPERTY_KEY_IS_PRODUCTION"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PROPERTY_KEY_IS_PRODUCTION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v2, 0x14

    const-string/jumbo v3, "ro.mot.build.customerid"

    move-object/from16 v23, v0

    const-string v0, "PROPERTY_KEY_CUSTOMERID"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PROPERTY_KEY_CUSTOMERID:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v2, 0x15

    const-string/jumbo v3, "ro.lenovo.region"

    move-object/from16 v24, v1

    const-string v1, "PROPERTY_KEY_REGION"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PROPERTY_KEY_REGION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v2, 0x16

    const-string/jumbo v3, "ro.product.cpu.abilist64"

    move-object/from16 v25, v0

    const-string v0, "PRODUCT_KEY_CPU_ABILIST64"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_KEY_CPU_ABILIST64:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v2, 0x17

    const-string/jumbo v3, "ro.hardware.soc.manufacturer"

    move-object/from16 v26, v1

    const-string v1, "SOC_MANUFACTURER"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->SOC_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v2, 0x18

    const-string/jumbo v3, "ro.carrier"

    move-object/from16 v27, v0

    const-string v0, "CARRIER_INFO"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CARRIER_INFO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v2, 0x19

    const-string/jumbo v3, "ro.product.name.canonical"

    move-object/from16 v28, v1

    const-string v1, "PRODUCT_CANONICAL"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_CANONICAL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    move-object/from16 v26, v0

    filled-new-array/range {v1 .. v26}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSet:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-virtual {v0}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    return-object v0
.end method
