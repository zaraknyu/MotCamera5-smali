.class public abstract Lcom/motorola/camera/watermark/WatermarkEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final processedUris:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/watermark/WatermarkEditor;->processedUris:Ljava/util/Set;

    return-void
.end method

.method public static addWatermarkToBitmap(Landroid/graphics/Bitmap;IJLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const-string v3, "WatermarkEditor"

    if-nez v0, :cond_0

    const-string v0, "Invalid jpeg bitmap"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v12

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    invoke-virtual {v6, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->fromName(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOptionSnapshot(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v15

    invoke-static {v15, v5}, Lcom/motorola/camera/watermark/WatermarkEditor;->isSignatureEnabled(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Z

    move-result v6

    invoke-virtual {v15, v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setSignatureEnabled(Z)V

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setShootingParamsEnabled(Z)V

    invoke-static/range {p2 .. p3}, Lcom/motorola/camera/watermark/WatermarkEditor;->getDateString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p3}, Lcom/motorola/camera/watermark/WatermarkEditor;->getTimeString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/watermark/WatermarkEditor;->convertProductName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    :try_start_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v15}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getShootingParamsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setShootingParamsEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v8, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :goto_0
    :try_start_2
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    move v11, v8

    invoke-static {}, Lcom/motorola/camera/watermark/WatermarkEditor;->getSignatureText()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x1

    move v2, v11

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v13}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v7, Lcom/motorola/camera/watermark/WatermarkBuilder;

    invoke-direct {v7, v14}, Lcom/motorola/camera/watermark/WatermarkBuilder;-><init>(Landroid/content/Context;)V

    iput-object v5, v7, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkStyle:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iput v8, v7, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    iput v9, v7, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageHeight:I

    iput v1, v7, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageOrientation:I

    iput-object v6, v7, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkContent:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    iput-object v15, v7, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-virtual {v7}, Lcom/motorola/camera/watermark/WatermarkBuilder;->build()[Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v1, :cond_4

    move v7, v2

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_4

    aget-object v16, v6, v7

    if-nez v16, :cond_2

    goto :goto_3

    :cond_2
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    neg-int v9, v1

    int-to-float v9, v9

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v11

    invoke-virtual {v8, v9, v10, v13}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    const/16 v22, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v21, v8

    invoke-static/range {v16 .. v22}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v9, v16

    if-eq v8, v9, :cond_3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_3
    :goto_2
    aput-object v8, v6, v7

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    div-int/lit8 v7, v1, 0x5a

    const/4 v8, 0x4

    if-eqz v12, :cond_5

    add-int/lit8 v7, v7, 0x1

    invoke-static {v8}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v9

    array-length v9, v9

    rem-int/2addr v7, v9

    :cond_5
    instance-of v9, v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    if-eqz v9, :cond_6

    invoke-static {v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getCommonAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v5, v8, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getRotatedSize(III)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v1, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->computeBorderPx(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;I)I

    move-result v1

    aget-object v5, v6, v2

    invoke-static {v0, v5, v12, v7, v1}, Lcom/motorola/camera/mcf/MotUtil;->addBorderWatermarkToBitmap(Ljava/lang/Object;Ljava/lang/Object;ZII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v1, v6, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    aget-object v2, v6, v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_9

    :cond_6
    :try_start_4
    instance-of v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    if-eqz v5, :cond_9

    aget-object v5, v6, v2

    invoke-static {v0, v5, v12, v7}, Lcom/motorola/camera/mcf/MotUtil;->appendWatermarkToBitmap(Ljava/lang/Object;Ljava/lang/Object;ZI)[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v1, :cond_8

    const/16 v7, 0xb4

    if-ne v1, v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    aget-object v2, v6, v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    aget-object v2, v6, v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    :goto_5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :cond_9
    :try_start_6
    array-length v1, v6

    new-array v5, v1, [I

    :goto_6
    if-ge v2, v1, :cond_a

    add-int/lit8 v9, v7, 0x1

    invoke-static {v8}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v10

    array-length v10, v10

    rem-int/2addr v7, v10

    aput v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v7, v9

    goto :goto_6

    :cond_a
    array-length v1, v6

    invoke-static {v0, v6, v5, v1}, Lcom/motorola/camera/mcf/MotUtil;->addNewWatermarkToBitmap(Ljava/lang/Object;[Ljava/lang/Object;[II)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v0

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/motorola/camera/watermark/WatermarkEditor;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_8

    :cond_b
    return-object v1

    :goto_9
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/motorola/camera/watermark/WatermarkEditor;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a

    :cond_c
    return-object v2

    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/motorola/camera/watermark/WatermarkEditor;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_c

    :cond_d
    throw v0
.end method

.method public static addWatermarkToImageBackup(Landroid/net/Uri;I)Z
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "_data"

    invoke-static {p0, v4}, Lcom/motorola/camera/Util;->getMediaDataFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v7, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/lang/String;)V

    const-string v4, "Orientation"

    invoke-virtual {v7, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x3

    if-eq v4, v8, :cond_3

    const/4 v8, 0x6

    if-eq v4, v8, :cond_2

    const/16 v8, 0x8

    if-eq v4, v8, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/high16 v4, 0x43870000    # 270.0f

    goto :goto_0

    :cond_2
    const/high16 v4, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_3
    const/high16 v4, 0x43340000    # 180.0f

    :goto_0
    float-to-int v4, v4

    invoke-virtual {v3, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-nez v8, :cond_4

    if-eqz v8, :cond_1c

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    return v5

    :cond_4
    int-to-float v9, v4

    :try_start_1
    invoke-static {v8, v9, v5, v5}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v10

    invoke-static {v7, v10, p1}, Lcom/motorola/camera/watermark/WatermarkEditor;->getPhotoCaptureInfo(Lcom/motorola/camera/photometadata/PhotoMetadata;II)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, ""

    :goto_1
    invoke-static {v9, v5, v10, v11, p1}, Lcom/motorola/camera/watermark/WatermarkEditor;->addWatermarkToBitmap(Landroid/graphics/Bitmap;IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-nez p1, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v5

    :cond_8
    if-eqz v4, :cond_9

    neg-int v4, v4

    int-to-float v4, v4

    :try_start_3
    invoke-static {p1, v4, v5, v5}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v6

    :goto_2
    move-object v6, v8

    goto/16 :goto_d

    :catch_0
    move-object p0, v6

    :goto_3
    move-object v6, v8

    goto/16 :goto_e

    :cond_9
    :goto_4
    const-string/jumbo v4, "watermarked_"

    const-string v10, ".jpg"

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v4, v10, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p1, v4, v10, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributes()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    if-nez p0, :cond_e

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :cond_a
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    return v5

    :cond_e
    const/16 v3, 0x400

    :try_start_8
    new-array v3, v3, [B

    :goto_6
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {p0, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_7

    :cond_13
    const/4 v5, 0x1

    :goto_7
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Backup watermark added in "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WatermarkEditor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v5

    :goto_8
    :try_start_b
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception p0

    :try_start_c
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_a
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    :try_start_e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_5
    move-exception p0

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    :try_start_10
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw p0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catchall_7
    move-exception p0

    move-object p1, v6

    move-object v0, p1

    goto/16 :goto_2

    :catch_1
    move-object p0, v6

    move-object p1, p0

    goto/16 :goto_3

    :catchall_8
    move-exception p0

    move-object p1, v6

    move-object v0, p1

    move-object v9, v0

    goto/16 :goto_2

    :catch_2
    move-object p0, v6

    move-object p1, p0

    move-object v9, p1

    goto/16 :goto_3

    :catchall_9
    move-exception p0

    move-object p1, v6

    move-object v0, p1

    move-object v9, v0

    goto :goto_d

    :catch_3
    move-object p0, v6

    move-object p1, p0

    move-object v9, p1

    goto :goto_e

    :goto_d
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_15
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_16
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_18
    throw p0

    :goto_e
    if-eqz v6, :cond_19

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_19
    if-eqz v9, :cond_1a

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1a
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1b
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1c
    :goto_f
    return v5
.end method

.method public static addWatermarkToThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15

    const/4 v1, 0x0

    const-string v2, "WatermarkEditor"

    if-nez p0, :cond_0

    const-string p0, "Invalid bitmap"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->isPortraitSize(Landroid/util/Size;)Z

    move-result v0

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Landroid/util/Size;

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->transposeSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v11

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    invoke-virtual {v5, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->fromName(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOptionSnapshot(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v14

    invoke-static {v14, v0}, Lcom/motorola/camera/watermark/WatermarkEditor;->isSignatureEnabled(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Z

    move-result v5

    invoke-virtual {v14, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setSignatureEnabled(Z)V

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setDeviceWatermarkEnabled(Z)V

    invoke-virtual {v14, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setShootingParamsEnabled(Z)V

    invoke-virtual {v14, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setTimeEnabled(Z)V

    invoke-virtual {v14, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setDateEnabled(Z)V

    instance-of v5, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    if-eqz v5, :cond_2

    invoke-virtual {v14, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setDeviceWatermarkEnabled(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v6, v5

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object v5, v1

    move-object v6, v5

    goto/16 :goto_a

    :cond_2
    :goto_0
    instance-of v5, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    if-eqz v5, :cond_3

    invoke-virtual {v14, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setLogoEnabled(Z)V

    :cond_3
    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/watermark/WatermarkEditor;->convertProductName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    invoke-static {}, Lcom/motorola/camera/watermark/WatermarkEditor;->getSignatureText()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v6, Lcom/motorola/camera/watermark/WatermarkBuilder;

    invoke-direct {v6, v13}, Lcom/motorola/camera/watermark/WatermarkBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkStyle:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    iput v7, v6, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    iput v8, v6, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageHeight:I

    iput v4, v6, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageOrientation:I

    iput-object v5, v6, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkContent:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    iput-object v14, v6, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-virtual {v6}, Lcom/motorola/camera/watermark/WatermarkBuilder;->build()[Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    instance-of v6, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    if-eqz v6, :cond_7

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getCommonAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;

    move-result-object v0

    array-length v6, v5

    if-eqz v6, :cond_6

    aget-object v6, v5, v4

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v9, v8

    int-to-float v7, v7

    div-float/2addr v9, v7

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getWatermarkBorder()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    if-eq v7, v8, :cond_5

    sub-int v0, v8, v3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v8, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object v6, v1

    goto/16 :goto_a

    :cond_5
    :goto_1
    invoke-static {v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleBitmapToWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v6, p0, v0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->drawBitmapWithOffset(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    move-object v1, v6

    goto :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    goto/16 :goto_a

    :cond_6
    :goto_3
    :try_start_3
    const-string v0, "Invalid watermark bitmaps for Border style"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    filled-new-array {p0, v1}, [Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    array-length v0, v5

    :goto_4
    if-ge v4, v0, :cond_d

    aget-object v2, v5, v4

    filled-new-array {p0, v1}, [Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :try_start_4
    instance-of v0, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    if-eqz v0, :cond_a

    array-length v0, v5

    if-eqz v0, :cond_9

    aget-object v0, v5, v4

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleBitmapToWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {p0, v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->combineBitmapsAttachBottom(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :cond_9
    :goto_5
    :try_start_6
    const-string v0, "Invalid watermark bitmaps for Label style"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    filled-new-array {p0, v1}, [Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    array-length v0, v5

    :goto_6
    if-ge v4, v0, :cond_d

    aget-object v2, v5, v4

    filled-new-array {p0, v1}, [Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    move-object v0, p0

    :goto_7
    if-eqz v0, :cond_b

    move-object v2, v0

    goto :goto_8

    :cond_b
    move-object v2, p0

    :goto_8
    filled-new-array {p0, v0}, [Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    array-length v1, v5

    :goto_9
    if-ge v4, v1, :cond_c

    aget-object v3, v5, v4

    filled-new-array {p0, v0}, [Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    return-object v2

    :goto_a
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    filled-new-array {p0, v1}, [Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    if-eqz v5, :cond_d

    array-length v0, v5

    :goto_b
    if-ge v4, v0, :cond_d

    aget-object v2, v5, v4

    filled-new-array {p0, v1}, [Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_d
    return-object p0

    :goto_c
    filled-new-array {p0, v1}, [Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    if-eqz v5, :cond_e

    array-length v2, v5

    :goto_d
    if-ge v4, v2, :cond_e

    aget-object v3, v5, v4

    filled-new-array {p0, v1}, [Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_e
    throw v0
.end method

.method public static convertProductName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "5G"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_ASCII_WATERMARK:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductPrc()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CARRIER_INFO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "docomo"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "(?i)\\bM-.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "replaceFirst(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static getDateString(J)Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_BRAND:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lenovo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MMMdyyyy"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "MMdyyyy"

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "dd"

    if-eqz v2, :cond_2

    const-string v2, "MMM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :goto_2
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoCaptureInfo(Lcom/motorola/camera/photometadata/PhotoMetadata;II)Ljava/lang/String;
    .locals 11

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "ExposureTime"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISOSpeedRatings"

    invoke-virtual {p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FocalLengthIn35mmFilm"

    invoke-virtual {p0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FNumber"

    invoke-virtual {p0, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v3, p1, Lcom/motorola/camera/saving/SaveImageService;->mPortraitRecords:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v4, p1, Lcom/motorola/camera/saving/SaveImageService;->mPortraitRecords:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/saving/SaveImageService;->mPortraitRecords:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    if-eqz v4, :cond_1

    move-object v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "%d/%d"

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v3, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-gez v0, :cond_2

    div-double/2addr v5, v3

    add-double/2addr v5, v7

    double-to-int v0, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    double-to-int v0, v3

    int-to-double v9, v0

    sub-double/2addr v3, v9

    const-wide v9, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v9, v3, v9

    if-lez v9, :cond_3

    div-double/2addr v5, v3

    add-double/2addr v5, v7

    double-to-int v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'\' "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mm  f/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s  ISO"

    invoke-static {p2, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSignatureText()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_SIGNATURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeString(J)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Hm"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "hm"

    :goto_0
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_BRAND:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v2}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lenovo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :goto_2
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFrontLabelBorderPortrait(I)Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->fromName(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p0, :cond_2

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSignatureEnabled(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Z
    .locals 1

    instance-of p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/watermark/WatermarkEditor;->getSignatureText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDeviceWatermarkEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/watermark/WatermarkEditor;->getSignatureText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static loadWatermarkBitmap(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;Z)Z
    .locals 21

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return v4

    :cond_0
    const/4 v5, -0x1

    const/16 v6, 0x10e

    const/16 v7, 0x5a

    :try_start_0
    new-instance v10, Lokio/RealBufferedSource$1;

    move-object/from16 v11, p1

    invoke-direct {v10, v11}, Lokio/RealBufferedSource$1;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    :try_start_1
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    sget-object v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    invoke-virtual {v13, v12}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->fromName(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v12

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    float-to-int v13, v13

    invoke-static {v13}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->roundUpToNextMultipleOf8(I)I

    move-result v13

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    float-to-int v14, v14

    invoke-static {v14}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->roundUpToNextMultipleOf8(I)I

    move-result v14

    move-object/from16 v15, p0

    invoke-static {v15, v13, v14, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    instance-of v9, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-nez v9, :cond_1

    :try_start_3
    instance-of v9, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object/from16 v20, v10

    :goto_0
    move-object v9, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_1
    :goto_2
    if-eq v1, v7, :cond_3

    if-ne v1, v6, :cond_2

    goto :goto_3

    :cond_2
    move v8, v1

    const/4 v9, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    int-to-float v9, v1

    :try_start_4
    invoke-static {v15, v9, v4, v4}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move v8, v4

    :goto_4
    :try_start_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v7

    invoke-static {v0, v7, v5}, Lcom/motorola/camera/watermark/WatermarkEditor;->getPhotoCaptureInfo(Lcom/motorola/camera/photometadata/PhotoMetadata;II)Ljava/lang/String;

    move-result-object v7

    if-eqz v9, :cond_4

    move-object v5, v9

    goto :goto_5

    :cond_4
    move-object v5, v15

    :goto_5
    const-string v6, "DateTime"

    invoke-virtual {v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v18, -0x1

    if-eqz v0, :cond_5

    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    move-object/from16 v20, v10

    goto :goto_6

    :cond_6
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy:MM:dd HH:mm:ss"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object/from16 v20, v10

    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v6, v4, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/text/ParsePosition;

    const/4 v10, 0x0

    invoke-direct {v4, v10}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v6, v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    move-wide/from16 v10, v18

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    goto :goto_6

    :goto_7
    invoke-static {v5, v8, v10, v11, v7}, Lcom/motorola/camera/watermark/WatermarkEditor;->addWatermarkToBitmap(Landroid/graphics/Bitmap;IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v4, :cond_d

    :try_start_7
    instance-of v0, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    if-nez v0, :cond_8

    instance-of v0, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    if-eqz v0, :cond_d

    :cond_8
    const/16 v5, 0x10e

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v5, v4

    move-object/from16 v16, v9

    move-object v9, v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    move-object v4, v0

    goto/16 :goto_12

    :goto_9
    if-eq v1, v5, :cond_9

    const/16 v5, 0x5a

    if-ne v1, v5, :cond_a

    :cond_9
    const/4 v10, 0x0

    goto :goto_c

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v10, 0x0

    invoke-static {v4, v13, v14, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    move-object v5, v0

    move-object v6, v5

    :goto_b
    const/4 v7, 0x0

    goto :goto_e

    :cond_b
    instance-of v0, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    if-eqz v0, :cond_d

    invoke-static {v13, v14}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->isExceedFullRatio(II)Z

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v13

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-eqz v0, :cond_c

    invoke-static {v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->roundUpToNextMultipleOf32(I)I

    move-result v5

    :cond_c
    const/4 v10, 0x0

    invoke-static {v4, v13, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a

    :goto_c
    invoke-static {v4, v14, v13, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    neg-int v0, v1

    int-to-float v0, v0

    :try_start_8
    invoke-static {v5, v0, v10, v10}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v7, v0

    move-object v6, v5

    move-object v5, v7

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v6, v5

    move-object/from16 v16, v9

    move-object v9, v15

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_d
    move-object v5, v4

    goto :goto_8

    :cond_d
    move-object v5, v4

    const/4 v6, 0x0

    goto :goto_b

    :goto_e
    if-eqz v5, :cond_e

    const/4 v8, 0x1

    :try_start_9
    invoke-virtual {v3, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v8, 0x1

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v8, v5

    move-object/from16 v16, v9

    move-object v9, v15

    goto :goto_d

    :cond_e
    move/from16 v8, p5

    :goto_f
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    filled-new-array {v15, v9, v4, v6, v7}, [Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_f

    if-eq v4, v5, :cond_f

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_10

    :cond_10
    const/4 v4, -0x1

    goto/16 :goto_16

    :catchall_4
    move-exception v0

    move-object v10, v5

    move-object v5, v4

    move-object v4, v9

    move-object v9, v15

    goto/16 :goto_1c

    :catch_0
    move-exception v0

    move-object v10, v5

    move-object v5, v4

    move-object v4, v9

    move-object v9, v15

    goto :goto_14

    :catchall_5
    move-exception v0

    :goto_11
    move-object v4, v0

    move-object/from16 v16, v9

    move-object v9, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_12

    :catchall_6
    move-exception v0

    move-object/from16 v20, v10

    goto :goto_11

    :catchall_7
    move-exception v0

    move-object/from16 v20, v10

    move-object v4, v0

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    move-object/from16 v20, v10

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto/16 :goto_1

    :goto_12
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception v0

    :try_start_c
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    throw v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :catchall_a
    move-exception v0

    move-object v10, v8

    move-object/from16 v4, v16

    goto/16 :goto_1c

    :catch_1
    move-exception v0

    move-object v10, v8

    move-object/from16 v4, v16

    move/from16 v8, p5

    goto :goto_14

    :catchall_b
    move-exception v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1c

    :catch_2
    move-exception v0

    move/from16 v8, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_14
    :try_start_d
    const-string v11, "WatermarkEditor"

    const-string v12, "Failed to read exif info"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    filled-new-array {v9, v4, v5, v6, v7}, [Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_11

    if-eq v4, v10, :cond_11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_15

    :goto_16
    if-eq v1, v4, :cond_1d

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    sub-float/2addr v6, v0

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float/2addr v4, v7

    sub-float/2addr v0, v4

    if-eqz v1, :cond_15

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v4, :cond_12

    goto :goto_17

    :cond_12
    const/16 v4, 0x5a

    if-ne v4, v1, :cond_13

    const/4 v4, 0x2

    goto :goto_18

    :cond_13
    const/16 v4, 0xb4

    if-ne v4, v1, :cond_14

    const/4 v4, 0x3

    goto :goto_18

    :cond_14
    const/16 v4, 0x10e

    if-ne v4, v1, :cond_15

    move v4, v5

    goto :goto_18

    :cond_15
    :goto_17
    const/4 v4, 0x1

    :goto_18
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {v4}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v4

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v7

    array-length v7, v7

    rem-int/2addr v4, v7

    invoke-static {v5}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v7

    aget v4, v7, v4

    :cond_16
    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    const/4 v5, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    if-eq v4, v5, :cond_19

    const/4 v5, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    if-eq v4, v5, :cond_18

    const/4 v5, 0x3

    if-eq v4, v5, :cond_18

    const/4 v5, 0x4

    if-ne v4, v5, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    throw v0

    :cond_18
    move v7, v9

    :cond_19
    :goto_19
    mul-float/2addr v7, v6

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v7, v5

    invoke-static {v1}, Lcom/motorola/camera/watermark/WatermarkEditor;->isFrontLabelBorderPortrait(I)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1a

    move v6, v5

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    if-eq v4, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v4, v1, :cond_1c

    const/4 v1, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v4, v1, :cond_1c

    const/4 v1, 0x4

    if-ne v4, v1, :cond_1b

    goto :goto_1a

    :cond_1b
    const/4 v0, 0x0

    throw v0

    :cond_1c
    :goto_1a
    mul-float/2addr v6, v0

    iget v0, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v6, v0

    :goto_1b
    invoke-virtual {v3, v7, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_1d
    return v8

    :catchall_c
    move-exception v0

    :goto_1c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    filled-new-array {v9, v4, v5, v6, v7}, [Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1e

    if-eq v2, v10, :cond_1e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1d

    :cond_1f
    throw v0
.end method

.method public static releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public static rotateAndScaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {v5, p1, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static shouldAddThumbnailWatermark(Lcom/motorola/camera/CameraData;)Z
    .locals 6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->fromName(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v3, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne p0, v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v2

    :goto_2
    const-class v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    const-class v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    invoke-static {v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static shouldProcessUri(Landroid/net/Uri;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/watermark/WatermarkEditor;->processedUris:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
