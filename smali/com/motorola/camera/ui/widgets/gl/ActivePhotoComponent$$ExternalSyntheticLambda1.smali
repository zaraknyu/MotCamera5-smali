.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    monitor-enter v0

    :try_start_0
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mActivePhotoJobs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mActivePhotoDivert:Lcom/motorola/camera/mediacodec/ActivePhotoJpegDivert;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_AUDIO_TIMESTAMP_OFFSET:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    monitor-enter v0

    :try_start_6
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_AUDIO_TIMESTAMP_OFFSET:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->setSelfieFlip(I)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mEngine:Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getEGLHelper()Lcom/motorola/camera/utility/EGLHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->setup(Lcom/motorola/camera/utility/EGLHelper;Lcom/motorola/camera/PreviewSize;J)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mEngine:Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    invoke-virtual {p0}, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->start()V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->keepActivePhotoVideoFiles()Z

    move-result v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mActivePhotoJobs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mActivePhotoDivert:Lcom/motorola/camera/mediacodec/ActivePhotoJpegDivert;

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    goto :goto_6

    :goto_5
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    :goto_6
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_AUDIO_TIMESTAMP_OFFSET:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_AUDIO_TIMESTAMP_OFFSET:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_AUDIO_TIMESTAMP_OFFSET:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->stopEngine()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
