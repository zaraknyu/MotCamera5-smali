.class public final Lcom/motorola/camera/panorama/PanoInitCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mPanoCameraInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->$r8$classId:I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoListener;)V

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->mPanoCameraInfo:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/panorama/PanoCameraInfo;Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->$r8$classId:I

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoListener;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->mPanoCameraInfo:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/gms/tasks/zzb;
    .locals 6

    iget v0, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->$r8$classId:I

    const/16 v1, 0xd

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->mPanoCameraInfo:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/PreviewSize;

    iget v2, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    monitor-enter v0

    :try_start_0
    iput v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageWidth:I

    iput p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageHeight:I

    iget-object p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v0

    goto/16 :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->applySettings()V

    iget-object p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v3, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    invoke-virtual {p0, v3, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->start(II)I

    move-result p0

    if-eqz p0, :cond_1

    const-string v2, "MorphoEngine"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "MorphoPanoramaGP3.start error ret:0x%08X"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :try_start_2
    iget-object p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->clearStockData()V

    :cond_2
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsCapturing:Z

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v2, p0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setAttachEnabled(Z)V

    iget-object p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, p0, v4

    sget-object p0, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PANO_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_6

    const-string p0, "Pano"

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->enableSaveInputImages(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_7

    array-length v2, p0

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v3, p0, v4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->disableSaveInputImages()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :goto_1
    monitor-exit v0

    :goto_2
    new-instance p0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tasks/zzb;-><init>(I)V

    return-object p0

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :pswitch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;

    iget-object v0, v0, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v2

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->mPanoCameraInfo:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/panorama/PanoCameraInfo;

    monitor-enter v2

    :try_start_5
    iget-object v0, v2, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_8

    monitor-exit v2

    goto/16 :goto_4

    :cond_8
    :try_start_6
    new-instance v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;-><init>()V

    iput-object v0, v2, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v0, v2, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "YVU420_SEMIPLANAR"

    iput-object v3, v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_format:Ljava/lang/String;

    iput-object v3, v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_format:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget-object v0, v2, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget-object v3, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget-object v0, v2, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v3, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleH:F

    float-to-double v3, v3

    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovx:D

    iget v3, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleV:F

    float-to-double v3, v3

    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovy:D

    iget v3, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mCameraOrientation:I

    iput v3, v2, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    iget v4, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDisplayRotation:I

    iget v5, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDeviceOrientation:I

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v4, v4, 0x168

    iput v4, v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    sget-object v3, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_GOAL_ANGLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->goal_angle:D

    iget-object v0, v2, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_ASPECT_RATION_GAIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aspect_ratio_gain:D

    iget-object v0, v2, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v3, v2, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    invoke-static {v0, v3}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->initializeEngine(Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;)V

    new-instance v0, Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-direct {v0}, Lcom/motorola/camera/panorama/morpho/Settings;-><init>()V

    iput-object v0, v2, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-virtual {v2}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->initSensorFusion()V

    invoke-virtual {v2}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setupRoundSensorFusion()V

    iget p0, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mCameraOrientation:I

    invoke-virtual {v2, p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setSensorFusionRotation(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->registerSensorListeners()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v2

    :goto_4
    new-instance p0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tasks/zzb;-><init>(I)V

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public callback(Lcom/google/android/gms/tasks/zzb;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/motorola/camera/panorama/PanoCallable;->callback(Lcom/google/android/gms/tasks/zzb;)V

    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoCallable;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/panorama/PanoListener;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    invoke-interface {p0, p1}, Lcom/motorola/camera/panorama/PanoListener;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "PanoCaptureCallable"

    return-object p0

    :pswitch_0
    const-string p0, "PanoInitCallable"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
