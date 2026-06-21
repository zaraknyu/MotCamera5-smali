.class public final synthetic Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 14

    iget v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const-string v0, "CameraPreviewProcessingTexture.mOnImageAvailable"

    invoke-static {v0}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mToken:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mToken:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mPreviewProcessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_2

    :cond_0
    move v5, v4

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v2

    goto/16 :goto_11

    :catch_0
    move-object v6, v3

    :goto_1
    if-nez v6, :cond_16

    if-le v5, v4, :cond_1

    :try_start_2
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_1

    const-string p1, "CameraPreviewProcessingTexture"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Possible skipped frames from engine -> reader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_11

    :cond_1
    :goto_2
    if-nez v2, :cond_2

    :try_start_3
    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    monitor-exit v1

    goto/16 :goto_10

    :catchall_2
    move-exception p0

    goto/16 :goto_12

    :cond_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    :try_start_5
    monitor-exit p0

    if-nez p1, :cond_15

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_15

    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    monitor-exit p0

    if-nez p1, :cond_3

    goto/16 :goto_f

    :cond_3
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSkipNextFrame:Z

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSkipNextFrame:Z

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_10

    :cond_4
    :try_start_8
    new-array p1, v4, [J

    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsFirstFrame:Z

    if-eqz v6, :cond_6

    monitor-enter p0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMono:Z

    invoke-virtual {p0, v2, v6, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->processPreview(Landroid/media/Image;Z[JZ)Z

    move-result v6

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsFirstFrame:Z
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v6, :cond_5

    move v7, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v7, v5

    goto :goto_4

    :catch_1
    move-object p1, v3

    :catch_2
    move v6, v5

    goto/16 :goto_a

    :catchall_3
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p1

    :cond_6
    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMono:Z

    invoke-virtual {p0, v2, v6, p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->processPreview(Landroid/media/Image;Z[JZ)Z

    move-result v6

    goto :goto_3

    :goto_4
    if-nez v6, :cond_8

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move-object p1, v3

    move v4, v5

    move v6, v4

    goto/16 :goto_b

    :cond_8
    :goto_5
    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    monitor-exit p0

    if-nez v6, :cond_9

    monitor-enter p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    monitor-exit p0

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFacing:I

    invoke-virtual {v6, v2, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setYuvData(Landroid/media/Image;II)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p1

    goto/16 :goto_9

    :catchall_5
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    throw p1

    :cond_9
    const-string v6, "CameraPreviewProcessingTexture"

    const-string v7, "image is closed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    aget-wide v6, p1, v5

    iput-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v6, Landroid/util/Pair;

    iget-wide v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mLastAddedToken:I

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    iget-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsActivePhotoOn:Z

    if-nez p1, :cond_a

    goto :goto_8

    :cond_a
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_AUDIO_TIMESTAMP_OFFSET:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    sub-long/2addr v10, v12

    cmp-long v8, v6, v8

    if-nez v8, :cond_b

    goto :goto_7

    :cond_b
    add-long/2addr v6, v10

    const-wide/16 v8, 0x2

    div-long v10, v6, v8

    :goto_7
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_c
    :goto_8
    monitor-enter p0
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->isEnabled()Z

    move-result v6
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMode:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_d

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isProModeSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    if-eqz v4, :cond_10

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->processFrame(Landroid/media/Image;)V

    goto :goto_a

    :cond_d
    if-nez v7, :cond_e

    sget-boolean v7, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mIsMoonDetected:Z

    if-eqz v7, :cond_e

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    if-eqz v4, :cond_10

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->processFrameMoon(Landroid/media/Image;)[I

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMoonYHistList:[I

    goto :goto_a

    :cond_e
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->getFeatureComponentProviders()Ljava/util/Map;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/IComponentProvider;

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMode:I

    invoke-interface {v8, v9, v2}, Lcom/motorola/camera/ui/IComponentProvider;->processFrame(ILandroid/media/Image;)Z

    move-result v8
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eqz v8, :cond_f

    goto :goto_b

    :catchall_6
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw p1
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :catchall_7
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :try_start_1c
    throw p1

    :goto_9
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :try_start_1d
    throw p1
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :catch_3
    :cond_10
    :goto_a
    move v4, v5

    :goto_b
    if-nez v4, :cond_11

    :try_start_1e
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    :cond_11
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;->onFirstFrame()V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_12
    if-eqz v6, :cond_14

    monitor-enter p0

    :try_start_1f
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mLastAddedToken:I

    if-ne p1, v0, :cond_13

    const-string p1, "CameraPreviewProcessingTexture.requestRenderSurface"

    invoke-static {v0, p1}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    goto :goto_c

    :catchall_8
    move-exception p1

    goto :goto_d

    :cond_13
    :goto_c
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurfaceDirectly(Z)V

    goto :goto_e

    :goto_d
    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    throw p1

    :cond_14
    :goto_e
    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    goto :goto_10

    :catchall_9
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    :try_start_22
    throw p1

    :cond_15
    :goto_f
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    :goto_10
    return-void

    :catchall_a
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    :try_start_24
    throw p1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    :cond_16
    add-int/lit8 v5, v5, 0x1

    :try_start_25
    invoke-virtual {v2}, Landroid/media/Image;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    move-object v2, v6

    goto/16 :goto_0

    :goto_11
    if-eqz v3, :cond_17

    :try_start_26
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    :cond_17
    throw p0

    :goto_12
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    throw p0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    if-eqz p1, :cond_18

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;->onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;Ljava/nio/ByteBuffer;)V

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
