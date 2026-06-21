.class public abstract Lcom/motorola/camera/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTO_TEST:Z

.field public static final GET_TARGETS_MTD:Ljava/lang/reflect/Method;

.field public static IS_SAMPLE_APK:I

.field public static final KPI:Z

.field public static final KPI_DEBUG:Z

.field public static final KPI_TIMELINE:Z

.field public static final LOW_DEVICES:Ljava/util/ArrayList;

.field public static final STABILITY_DEBUG:Z

.field public static final TEST_BUILD:Z

.field public static final USERDEBUG_BUILD:Z

.field public static final USER_BUILD:Z

.field public static final USER_SIGNED_BUILD:Z

.field public static sHighTextContrastEnable:Z

.field public static sIsApkCompatible:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/motorola/camera/Util;->USER_BUILD:Z

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string/jumbo v4, "test-keys"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/motorola/camera/Util;->USER_SIGNED_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductionBuild()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    const-string v0, "CameraKpiTag"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductionBuild()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "CAMERA_AUTO_TEST"

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    sput-boolean v2, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    sput-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    sput-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    sput-boolean v0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    const/4 v2, -0x1

    sput v2, Lcom/motorola/camera/Util;->IS_SAMPLE_APK:I

    sput-boolean v3, Lcom/motorola/camera/Util;->sHighTextContrastEnable:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/motorola/camera/Util;->LOW_DEVICES:Ljava/util/ArrayList;

    const-string/jumbo v3, "paros_4GB"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "bogota_4GB"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "mumba_4GB"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "naples_4GB"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sput-boolean v0, Lcom/motorola/camera/shared/Util;->KPI_DEBUG:Z

    const-string v0, "CameraKpiSystraceTag"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/shared/Util;->KPI_SYSTRACE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/camera/Util;->sIsApkCompatible:Ljava/lang/Boolean;

    :try_start_0
    const-string v1, "android.hardware.camera2.CaptureRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTargets"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/Util;->GET_TARGETS_MTD:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "MotoCameraUtil"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static combineDeviceWithRAM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "device"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->getDevicePhysicalRamSizeGiB(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0, p0}, Lcom/motorola/camera/shared/Util;->getDeviceNameWithRAM(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static correctOrientationRelativeToSensor(IIIZ)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 6
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    .line 7
    sget-object p3, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p3

    if-nez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    .line 8
    :goto_0
    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopNaturalOrientationMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    or-int/2addr p3, v0

    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/shared/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result p0

    return p0
.end method

.method public static correctOrientationRelativeToSensor(Z)I
    .locals 3

    .line 1
    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 2
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5
    invoke-static {v0, v1, v2, p0}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result p0

    return p0
.end method

.method public static createMicroKindThumbnail(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p1

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v4, v2, v3

    div-int/2addr v4, v1

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-lez v3, :cond_18

    if-lez v4, :cond_18

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    iget v1, v5, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_17

    iget v1, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_17

    iget v1, v5, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_17

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_17

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/16 v7, 0x16

    const/4 v8, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    if-ne v2, v7, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    :cond_0
    invoke-virtual {v0, v1, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v10, v3

    int-to-float v11, v2

    div-float/2addr v10, v11

    int-to-float v11, v4

    int-to-float v12, v9

    div-float/2addr v11, v12

    iget v12, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-nez v12, :cond_2

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ne v3, v13, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-ne v4, v13, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_7

    if-ne v0, v1, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_6

    :cond_2
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v14, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    if-ne v2, v3, :cond_3

    if-ne v9, v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v4, v12

    int-to-float v4, v4

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v1, v4, v5, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v1, v2

    goto :goto_6

    :cond_3
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v17, v10, v16

    if-lez v17, :cond_4

    float-to-double v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    :goto_1
    double-to-int v7, v7

    goto :goto_2

    :cond_4
    float-to-double v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    goto :goto_1

    :goto_2
    cmpl-float v8, v11, v16

    if-lez v8, :cond_5

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    :goto_3
    double-to-int v8, v10

    goto :goto_4

    :cond_5
    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    goto :goto_3

    :goto_4
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v5, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    move v12, v7

    move v14, v8

    :goto_5
    if-nez v12, :cond_9

    if-eqz v14, :cond_6

    goto :goto_7

    :cond_6
    if-eq v11, v0, :cond_7

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    :goto_6
    if-eqz p2, :cond_8

    if-eq v0, v1, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    return-object v1

    :cond_9
    :goto_7
    if-gez v12, :cond_a

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_a
    if-lez v12, :cond_b

    add-int/lit8 v12, v12, -0x1

    :cond_b
    :goto_8
    if-gez v14, :cond_c

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_c
    if-lez v14, :cond_d

    add-int/lit8 v14, v14, -0x1

    :cond_d
    :goto_9
    invoke-static {v2, v3, v12, v7}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v15

    move/from16 v16, v12

    invoke-static {v9, v4, v14, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v12

    invoke-virtual {v5, v6, v6, v15, v12}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v16, :cond_e

    if-nez v14, :cond_e

    const/4 v12, 0x1

    goto :goto_a

    :cond_e
    move v12, v6

    :goto_a
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-ne v15, v3, :cond_f

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-ne v15, v4, :cond_f

    const/4 v15, 0x1

    goto :goto_b

    :cond_f
    move v15, v6

    :goto_b
    if-eqz v11, :cond_11

    if-eq v11, v0, :cond_11

    if-eqz v12, :cond_10

    if-eqz v15, :cond_11

    :cond_10
    move/from16 v18, v2

    move-object v2, v11

    const/16 v0, 0x16

    goto :goto_f

    :cond_11
    if-eq v11, v0, :cond_12

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    if-lez v16, :cond_13

    move v11, v6

    goto :goto_c

    :cond_13
    move/from16 v11, v16

    :goto_c
    invoke-static {v2, v3, v11, v7}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v11

    if-lez v14, :cond_14

    move v12, v6

    goto :goto_d

    :cond_14
    move v12, v14

    :goto_d
    invoke-static {v9, v4, v12, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v6

    sget-object v18, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static/range {v18 .. v18}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    move/from16 v18, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_16

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    const/16 v15, 0x16

    if-ne v2, v15, :cond_15

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    :cond_15
    move/from16 v19, v15

    move-object v15, v0

    move/from16 v0, v19

    goto :goto_e

    :cond_16
    const/16 v0, 0x16

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-static {v11, v12, v15, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_f
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v1, v10, v5, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v10, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    move-object v11, v1

    move-object v1, v2

    move/from16 v12, v16

    move/from16 v2, v18

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "srcRect must be contained by srcBm!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dstW and dstH must be > 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Try to using recycled bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dismissKeyboard(Landroid/view/View;)Z
    .locals 3

    if-eqz p0, :cond_2

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    iget-object v0, v0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsCompat$Impl;->isVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "View can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExifOrientation(F)Ljava/lang/Integer;
    .locals 1

    float-to-int p0, p0

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getHardWare()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const-string v1, "exynos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static getIntentSource(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const-string v0, "com.android.systemui.camera_launch_source"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v2, :cond_3

    const/4 p0, 0x1

    if-eq v2, p0, :cond_2

    const/4 p0, 0x2

    if-eq v2, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "flip_changed"

    return-object p0

    :cond_2
    const-string/jumbo p0, "power_double_tap"

    return-object p0

    :cond_3
    const-string/jumbo p0, "wiggle_gesture"

    return-object p0
.end method

.method public static getMediaDataFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/storage/MediaStoreClient;->MEDIA_TYPES:Ljava/util/List;

    const-string/jumbo v2, "uri"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/motorola/camera/storage/MediaStoreClient;->queryOrNull(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return-object v0

    :goto_1
    const-string p1, "MotoCameraUtil"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getProductDisplay()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplayPropNames()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v1}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/Util;->isMotoProduct(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_ASCII_WATERMARK:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v2, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumSet;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\\A\\p{ASCII}*\\z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductPrc()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR_TEXT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductDisplayPropNames()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductPrc()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR_TEXT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSelectedFile(Ljava/io/File;)Ljava/io/File;
    .locals 5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "videoReview"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSplitList(Ljava/util/List;I)Ljava/util/LinkedList;
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v1, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v1, p1

    add-int/2addr v1, v2

    :goto_0
    if-gt v2, v1, :cond_3

    mul-int v3, v2, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v3, v4, :cond_1

    sub-int v4, v3, p1

    invoke-interface {p0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_2

    sub-int/2addr v3, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getSurfaceList(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "surfaces:"

    sget-object v1, Lcom/motorola/camera/Util;->GET_TARGETS_MTD:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getVideoFrame(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x12

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    new-instance v6, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v3}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07006f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p2, p2, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_1
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    mul-int/2addr p2, p0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/2addr p2, p1

    const/16 p1, 0x10e

    const/16 v1, 0x5a

    if-eq v2, v1, :cond_3

    if-ne v2, p1, :cond_2

    goto :goto_2

    :cond_2
    move v4, p2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, p0

    :goto_3
    if-eq v2, v1, :cond_5

    if-ne v2, p1, :cond_4

    goto :goto_4

    :cond_4
    move v5, p0

    goto :goto_5

    :cond_5
    :goto_4
    move v5, p2

    :goto_5
    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "MotoCameraUtil"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasGyroSensor()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isAvailableBitmap(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBluetoothMicType(I)Z
    .locals 1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isCLIState(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lmotorola/core_services/cli/CLIManager;->getInstance(Landroid/content/Context;)Lmotorola/core_services/cli/CLIManager;

    move-result-object p0

    invoke-virtual {p0}, Lmotorola/core_services/cli/CLIManager;->getDeviceState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCallActive()Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isDesktopModeWithLidClosed()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDesktopNaturalOrientationMode()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/motorola/camera/Util;->isCLIState(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->hasNaturalOrientationFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDeviceOnLandscapeOnDesktopMode()Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static isExternalMicType(I)Z
    .locals 4

    invoke-static {p0}, Lcom/motorola/camera/Util;->isBluetoothMicType(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->BLUETOOTH_MIC_SUPPORT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x3

    if-eq p0, v3, :cond_2

    const/16 v3, 0x16

    if-eq p0, v3, :cond_2

    const/16 v3, 0xb

    if-eq p0, v3, :cond_2

    const/4 v3, 0x4

    if-eq p0, v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public static isHardwareMtk()Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/Util;->getHardWare()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isHardwareQCom()Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/Util;->getHardWare()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isKpiWarning(J)Z
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x5

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMotoProduct(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "moto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPrcBuild()Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    return v0
.end method

.method public static isSampleApk()Z
    .locals 2

    .line 1
    sget v0, Lcom/motorola/camera/Util;->IS_SAMPLE_APK:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/Util;->isSampleApk(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSampleApk(Landroid/content/Context;)Z
    .locals 7

    .line 4
    sget v0, Lcom/motorola/camera/Util;->IS_SAMPLE_APK:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    .line 5
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzbp;->create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v2

    move v4, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v3

    goto :goto_0

    .line 11
    :cond_1
    const-string/jumbo v6, "sample"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    if-eqz v4, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    move p0, v2

    .line 12
    :goto_1
    sput p0, Lcom/motorola/camera/Util;->IS_SAMPLE_APK:I

    .line 13
    :cond_4
    sget p0, Lcom/motorola/camera/Util;->IS_SAMPLE_APK:I

    if-ne p0, v3, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public static isVendorOrSampleModuleInstalled()Z
    .locals 4

    sget-object v0, Lcom/motorola/camera/Util;->sIsApkCompatible:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzbp;->create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\d"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "compile(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "replaceAll(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "vendor_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "vendor_sample"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/Util;->sIsApkCompatible:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/motorola/camera/Util;->sIsApkCompatible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static loadPostViewThumbnail(Landroid/content/Context;Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-static {}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getMainDisplayRealSize()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v2, v0, :cond_0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v2

    move v2, v0

    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x5a

    if-ge v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v0

    const/16 v3, 0x10e

    if-eq v0, v3, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-le v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v0

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_3

    :cond_2
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    if-le v1, p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-static {v0, v4}, Lcom/motorola/camera/utility/ColorUtil;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    :cond_5
    invoke-static {p0, p1, v0}, Lcom/motorola/camera/Util;->loadThumbnailByTargetSize(Landroid/content/Context;Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadThumbnail(ILjava/nio/ByteBuffer;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lokio/RealBufferedSource$1;

    invoke-direct {v2, p1}, Lokio/RealBufferedSource$1;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, v2}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v4, "Orientation"

    invoke-virtual {v3, v4, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/utility/ExifUtility;->getOrientationFromExif(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move v3, v1

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    throw p0

    :goto_3
    const/4 v2, 0x0

    :try_start_5
    new-instance v4, Lokio/RealBufferedSource$1;

    invoke-direct {v4, p1}, Lokio/RealBufferedSource$1;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v0, Landroid/util/Size;

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v6, v5}, Landroid/util/Size;-><init>(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_2
    :goto_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_6

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v4

    :try_start_9
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_3
    move-object v0, v2

    goto :goto_4

    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    throw p0

    :goto_7
    :try_start_a
    new-instance v4, Lokio/RealBufferedSource$1;

    invoke-direct {v4, p1}, Lokio/RealBufferedSource$1;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-nez v0, :cond_0

    move p0, v1

    goto :goto_8

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_8
    iput p0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catch_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_b

    :catchall_6
    move-exception p0

    goto :goto_a

    :catchall_7
    move-exception p0

    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    :try_start_e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :goto_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    throw p0

    :goto_b
    int-to-float p0, v3

    invoke-static {v2, p0, v1, v1}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadThumbnailByMediaStore(Landroid/content/Context;JILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    invoke-static {p0, p4, v1}, Lcom/motorola/camera/Util;->getVideoFrame(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, v1, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, v1, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadThumbnailByTargetSize(Landroid/content/Context;Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/motorola/camera/Util;->getVideoFrame(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_6

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v4

    :try_start_0
    const-string/jumbo v5, "r"

    invoke-static {v0, v5}, Lcom/motorola/camera/storage/MediaStoreClient;->openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-static {v0, v1, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v6, v7, v8, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    if-eq v6, v3, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v1

    :cond_2
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_4
    move-exception v0

    move-object v3, v1

    :goto_3
    :try_start_8
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v5

    :try_start_9
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_3
    :try_start_a
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to open: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-object v3, v1

    :catch_1
    :goto_5
    int-to-float v0, v4

    invoke-static {v3, v0, v2, v2}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v5

    :try_start_b
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0, p2, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    :goto_7
    move-object v0, p0

    goto :goto_8

    :catch_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "ContentResolver loadThumbnail failed, uri:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MotoCameraUtil"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v3, v4, v5, v0}, Lcom/motorola/camera/Util;->loadThumbnailByMediaStore(Landroid/content/Context;JILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_7

    :goto_8
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p0

    const-string p2, ".dng"

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0, v2, v2}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v0, 0x100000

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public static recycleImageView(Landroid/widget/ImageView;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {v6, p1, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_0
    if-eqz p2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p2, -0x40800000    # -1.0f

    if-eqz p3, :cond_1

    invoke-virtual {v6, p2, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    :try_start_1
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    :goto_1
    move-object p0, v0

    goto :goto_2

    :cond_3
    return-object p0

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_1

    :goto_2
    const-string p1, "MotoCameraUtil"

    const-string p2, "Failed to rotate thumbnail"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_4
    move-object v1, p0

    return-object v1
.end method

.method public static setupGalleryWithCustomAnimation()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setupWindow(Landroid/view/Window;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static stopBluetoothSco()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_BLUETOOTH_RECORDING:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static stripVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static undoCorrectOrientationRelativeToSensor(IIIZ)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopNaturalOrientationMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    or-int/2addr v0, v2

    if-eqz v0, :cond_2

    add-int/lit16 p2, p2, 0xb4

    rem-int/lit16 p2, p2, 0x168

    :cond_2
    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    neg-int p1, p2

    add-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    return p1

    :cond_4
    :goto_1
    sub-int/2addr p2, p0

    add-int/lit16 p2, p2, 0x168

    rem-int/lit16 p2, p2, 0x168

    return p2
.end method

.method public static writeFile(Ljava/io/File;Ljava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
