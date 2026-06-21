.class public final Lcom/motorola/camera/panorama/PanoProcessFramesCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# instance fields
.field public final mByteBuffers:[Ljava/nio/ByteBuffer;

.field public final mCenter:[D

.field public final mImage:Lcom/motorola/camera/SecureDataHelper;

.field public final mPixelStride:[I

.field public final mRowStride:[I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/SecureDataHelper;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoListener;)V

    const/4 p2, 0x3

    new-array v0, p2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mByteBuffers:[Ljava/nio/ByteBuffer;

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mRowStride:[I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mPixelStride:[I

    const/4 p2, 0x2

    new-array p2, p2, [D

    iput-object p2, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/motorola/camera/SecureDataHelper;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/gms/tasks/zzb;
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;

    iget-object v1, v1, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v0, v1, v6}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->setPlane(Landroid/media/Image$Plane;I)V

    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->setPlane(Landroid/media/Image$Plane;I)V

    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->setPlane(Landroid/media/Image$Plane;I)V

    goto :goto_0

    :cond_0
    const-string v1, "PanoProcessFramesCallable"

    const-string v4, "get abnormal image"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    iput-object v3, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/tasks/zzb;-><init>(I)V

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v1

    iget-boolean v1, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v7

    iget-object v8, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mByteBuffers:[Ljava/nio/ByteBuffer;

    iget-object v9, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mRowStride:[I

    iget-object v10, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mPixelStride:[I

    if-eqz v1, :cond_3

    iget-object v11, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    move-object/from16 v22, v11

    goto :goto_1

    :cond_3
    move-object/from16 v22, v3

    :goto_1
    monitor-enter v7

    :try_start_1
    iget-object v11, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_4

    monitor-exit v7

    goto/16 :goto_14

    :cond_4
    :try_start_2
    iget-boolean v12, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsCapturing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v12, :cond_5

    monitor-exit v7

    goto/16 :goto_14

    :cond_5
    :try_start_3
    iget-boolean v12, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    if-nez v12, :cond_6

    invoke-virtual {v11}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v11

    const-wide/16 v13, 0x5

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    invoke-virtual {v7}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setInitialRotationByGravity()V

    iput-boolean v5, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsSensorAverage:Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_1c

    :cond_6
    :goto_2
    invoke-virtual {v7}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setSensorFusionValue()V

    iget-object v11, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    aget-object v13, v8, v6

    aget-object v14, v8, v5

    aget-object v15, v8, v4

    aget v16, v9, v6

    aget v17, v9, v5

    aget v18, v9, v4

    aget v19, v10, v6

    aget v20, v10, v5

    aget v21, v10, v4

    invoke-virtual/range {v12 .. v22}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[D)I

    move-result v8

    if-eqz v22, :cond_9

    iget-object v9, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v9, v9, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    const-wide v10, 0x3ff19999a0000000L    # 1.100000023841858

    if-eqz v9, :cond_8

    if-ne v9, v5, :cond_7

    goto :goto_3

    :cond_7
    aget-wide v12, v22, v6

    div-double/2addr v12, v10

    aput-wide v12, v22, v6

    goto :goto_4

    :cond_8
    :goto_3
    aget-wide v12, v22, v5

    div-double/2addr v12, v10

    aput-wide v12, v22, v5

    :cond_9
    :goto_4
    iget-object v9, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_a

    const-string v9, "MorphoEngine"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "mMorphoPanoramaGP3.attach error ret:0x%08X"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    goto/16 :goto_14

    :cond_a
    :try_start_4
    iget-boolean v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    if-nez v8, :cond_1a

    iget-object v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v8}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getDirection()I

    move-result v8

    iget-object v9, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v9, v9, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v8, v9, :cond_1a

    new-array v9, v4, [I

    iget-object v10, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v10, v9}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getOutputImageSize([I)I

    move-result v10

    if-eqz v10, :cond_b

    const-string v8, "MorphoEngine"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "MorphoSensorFusion.getOutputImageSize error ret:0x%08X"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    goto/16 :goto_14

    :cond_b
    :try_start_5
    aget v10, v9, v6

    aget v9, v9, v5

    const v11, 0x3f8ccccd    # 1.1f

    if-le v10, v9, :cond_c

    iput v10, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    goto :goto_5

    :cond_c
    int-to-float v10, v10

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iput v9, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    :goto_5
    invoke-virtual {v7, v8}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->createDirection(I)V

    iput-boolean v5, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    iget-object v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v9, v8, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->$r8$classId:I

    packed-switch v9, :pswitch_data_0

    invoke-virtual {v8}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->getHorizontalPreviewSize()Landroid/util/Size;

    move-result-object v8

    goto :goto_6

    :pswitch_0
    invoke-virtual {v8}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->getHorizontalPreviewSize()Landroid/util/Size;

    move-result-object v8

    goto :goto_6

    :pswitch_1
    invoke-virtual {v8}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->getVerticalPreviewSize()Landroid/util/Size;

    move-result-object v8

    goto :goto_6

    :pswitch_2
    invoke-virtual {v8}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->getVerticalPreviewSize()Landroid/util/Size;

    move-result-object v8

    :goto_6
    new-instance v9, Lcom/morphoinc/app/panoramagp3/PositionDetector;

    iget-object v10, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v10, v10, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    iget v11, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v12, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v14

    iget-object v15, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/morphoinc/app/panoramagp3/PositionDetector;-><init>(IIIIILcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;I)V

    iput-object v9, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    iget-object v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    if-eqz v8, :cond_e

    iget v9, v8, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    if-eq v9, v5, :cond_d

    if-nez v9, :cond_e

    :cond_d
    move v9, v5

    goto :goto_7

    :cond_e
    move v9, v6

    :goto_7
    if-eqz v9, :cond_f

    iget-object v10, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    iget-object v9, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v11, v9, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget v12, v8, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    iget-wide v13, v9, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovx:D

    double-to-float v13, v13

    iget-wide v8, v9, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovy:D

    double-to-float v14, v8

    iget-object v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-boolean v15, v8, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end:Z

    invoke-virtual/range {v10 .. v15}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->setStartPosition(IIFFZ)V

    :cond_f
    iget-object v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v8, v8, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    const/16 v9, 0xb4

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v8, :cond_14

    if-ne v8, v5, :cond_10

    goto :goto_b

    :cond_10
    sget-object v8, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget v8, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    if-eqz v8, :cond_12

    if-ne v8, v9, :cond_11

    goto :goto_8

    :cond_11
    move v8, v6

    goto :goto_9

    :cond_12
    :goto_8
    move v8, v5

    :goto_9
    if-eqz v8, :cond_13

    iget v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageHeight:I

    goto :goto_a

    :cond_13
    iget v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageWidth:I

    :goto_a
    int-to-float v9, v8

    iget v11, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    int-to-float v11, v11

    mul-float/2addr v9, v11

    iget v11, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    int-to-float v11, v11

    div-float/2addr v9, v11

    mul-float/2addr v9, v10

    float-to-int v9, v9

    goto :goto_10

    :cond_14
    :goto_b
    sget-object v8, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget v8, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    if-eqz v8, :cond_16

    if-ne v8, v9, :cond_15

    goto :goto_c

    :cond_15
    move v8, v6

    goto :goto_d

    :cond_16
    :goto_c
    move v8, v5

    :goto_d
    if-nez v8, :cond_17

    iget v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageHeight:I

    :goto_e
    move v9, v8

    goto :goto_f

    :cond_17
    iget v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageWidth:I

    goto :goto_e

    :goto_f
    int-to-float v8, v9

    iget v11, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    int-to-float v11, v11

    mul-float/2addr v8, v11

    iget v11, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    int-to-float v11, v11

    div-float/2addr v8, v11

    mul-float/2addr v8, v10

    float-to-int v8, v8

    :goto_10
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v10, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v10, :cond_18

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_13

    :cond_18
    :try_start_8
    invoke-virtual {v10, v9, v8}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setPreviewImage(II)I

    move-result v8

    if-eqz v8, :cond_19

    const-string v9, "MorphoEngine"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "MorphoPanoramaGP3.setPreviewImage error ret:0x%08X"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_11

    :catchall_1
    move-exception v0

    goto :goto_12

    :cond_19
    :goto_11
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_13

    :goto_12
    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0

    :cond_1a
    :goto_13
    iget-object v8, v7, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, v8, v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit v7

    :goto_14
    iget-object v7, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/motorola/camera/SecureDataHelper;

    iget-object v8, v7, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v8, Landroid/media/Image;

    if-eqz v8, :cond_1b

    if-eqz v8, :cond_1b

    invoke-virtual {v8}, Landroid/media/Image;->close()V

    iput-object v3, v7, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    :cond_1b
    if-eqz v1, :cond_22

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v1

    iget-object v7, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    monitor-enter v1

    :try_start_c
    iget-object v8, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v8, :cond_1e

    iget-object v8, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    if-nez v8, :cond_1c

    goto :goto_15

    :cond_1c
    iget-object v8, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-virtual {v8}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->detect()Z

    move-result v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v8, :cond_1d

    monitor-exit v1

    move v7, v5

    goto :goto_16

    :cond_1d
    :try_start_d
    iget-object v8, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    aget-wide v9, v7, v6

    aget-wide v11, v7, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/morphoinc/app/panoramagp3/PositionDetector;->detect(DD)I

    move-result v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    monitor-exit v1

    goto :goto_16

    :catchall_2
    move-exception v0

    goto/16 :goto_1a

    :cond_1e
    :goto_15
    monitor-exit v1

    const/16 v7, -0xc8

    :goto_16
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v8

    monitor-enter v8

    :try_start_e
    iget-object v1, v8, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v1, :cond_20

    iget-object v1, v8, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    if-nez v1, :cond_1f

    goto :goto_17

    :cond_1f
    iget v1, v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    monitor-exit v8

    goto :goto_18

    :catchall_3
    move-exception v0

    goto/16 :goto_19

    :cond_20
    :goto_17
    monitor-exit v8

    const/4 v1, -0x1

    :goto_18
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getPreviewImage()Landroid/graphics/Bitmap;

    move-result-object v8

    new-array v4, v4, [I

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getMaxOutputSize([I)V

    iget-object v9, v0, Lcom/motorola/camera/panorama/PanoCallable;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    if-eqz v9, :cond_22

    iget-object v0, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    aget-wide v10, v0, v6

    aget-wide v12, v0, v5

    aget v0, v4, v6

    aget v4, v4, v5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v14, "status"

    invoke-virtual {v5, v14, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "preview"

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v7, "guidePosition"

    invoke-virtual {v5, v7, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v3, "direction"

    invoke-virtual {v5, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "progressX"

    invoke-virtual {v5, v1, v10, v11}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "progressY"

    invoke-virtual {v5, v1, v12, v13}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "maxWidth"

    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "maxHeight"

    invoke-virtual {v5, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v9, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_PROGRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v7, v5, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    iget-object v1, v9, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->this$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANO_MAX_OUTPUT_SIZE"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v6, v0, :cond_21

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-eq v3, v4, :cond_22

    :cond_21
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v0, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    goto :goto_1b

    :goto_19
    :try_start_f
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0

    :goto_1a
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v0

    :cond_22
    :goto_1b
    new-instance v0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/tasks/zzb;-><init>(I)V

    return-object v0

    :goto_1c
    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v0

    :catchall_4
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoProcessFramesCallable"

    return-object p0
.end method

.method public final setPlane(Landroid/media/Image$Plane;I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v0, p2

    iget-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mRowStride:[I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    aput v1, v0, p2

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mPixelStride:[I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p1

    aput p1, p0, p2

    return-void
.end method
