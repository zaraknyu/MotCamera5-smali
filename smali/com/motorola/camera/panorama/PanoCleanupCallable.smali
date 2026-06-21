.class public final Lcom/motorola/camera/panorama/PanoCleanupCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/panorama/PanoListener;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/panorama/PanoCleanupCallable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoListener;)V

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/gms/tasks/zzb;
    .locals 7

    iget p0, p0, Lcom/motorola/camera/panorama/PanoCleanupCallable;->$r8$classId:I

    const/4 v0, 0x1

    const/16 v1, 0xd

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object p0

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsCapturing:Z

    iget-object v4, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    monitor-exit p0

    goto/16 :goto_1

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    if-eqz v5, :cond_2

    iget v5, v5, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    if-eq v5, v0, :cond_1

    if-nez v5, :cond_2

    :cond_1
    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    iput-boolean v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    invoke-virtual {v4, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setAttachEnabled(Z)V

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v5, :cond_3

    sget-object v4, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PANO_MAKE_360_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->PANORAMA_360_VIEW_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v4, v4, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-virtual {v3}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result v4

    sget-object v5, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "Off"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget v3, v3, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    if-eqz v3, :cond_4

    if-nez v5, :cond_4

    rsub-int v4, v4, 0x168

    :cond_4
    int-to-double v3, v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->end(ID)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v2, "MorphoEngine"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "MorphoPanoramaGP3.end error ret:0x%08X"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    monitor-exit p0

    :goto_1
    new-instance p0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tasks/zzb;-><init>(I)V

    return-object p0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object p0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_6
    :goto_3
    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    new-instance p0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tasks/zzb;-><init>(I)V

    return-object p0

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object p0

    monitor-enter p0

    :try_start_5
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v3, :cond_7

    monitor-exit p0

    goto :goto_6

    :cond_7
    :try_start_6
    invoke-virtual {v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->deleteNativeOutputInfo()I

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v3, v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->finish(Z)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v3, "MorphoEngine"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP3.finish error ret:0x%08X"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_a
    invoke-virtual {p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->releaseSensorFusion()V

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    :goto_6
    new-instance p0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tasks/zzb;-><init>(I)V

    return-object p0

    :goto_7
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/panorama/PanoCleanupCallable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "PanoStopCaptureCallable"

    return-object p0

    :pswitch_0
    const-string p0, "PanoReleaseResourceCallable"

    return-object p0

    :pswitch_1
    const-string p0, "PanoCleanupCallable"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
