.class public final synthetic Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    new-instance v5, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v2, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, p0, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;)V

    invoke-static {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->startItemAddAnim(Landroid/view/View;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/storage/backend/MediaStoreFile;

    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/storage/MediaFile;

    const-string v3, "SaveImageService"

    const-string v4, "Failed to add watermark during ImageBackup process. Uri: "

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v6, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    const-wide/32 v7, 0x40000000

    invoke-virtual {v6, v7, v8}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v6}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->setFileName(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->isWatermarkEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/motorola/camera/watermark/WatermarkEditor;->shouldProcessUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2, v0}, Lcom/motorola/camera/watermark/WatermarkEditor;->addWatermarkToImageBackup(Landroid/net/Uri;I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p0}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/motorola/camera/settings/SettingsHelper;->updatePendingMediaUris(Ljava/lang/String;Z)V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/motorola/camera/settings/SettingsHelper;->updatePendingMediaUris(Ljava/lang/String;Z)V

    throw p0

    :pswitch_1
    iget-object v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->isCameraSessionClosed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_5

    :cond_2
    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocalLength:F

    :cond_3
    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkFocus(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p0, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkExposure(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;Z)Z

    move-result p0

    or-int/2addr p0, v3

    if-eqz p0, :cond_4

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_4
    :goto_5
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->isCameraSessionClosed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkFocus(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, p0, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkExposure(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;Z)Z

    move-result p0

    or-int/2addr p0, v3

    if-eqz p0, :cond_6

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_6
    :goto_6
    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    const-string v3, "VIDEO_STOP_POST_DELAY"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzs;

    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v4, 0x10

    invoke-direct {v0, v4, v1, p0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    if-nez p0, :cond_8

    sget-object p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_8
    :goto_7
    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v5, 0x10

    invoke-direct {v4, v5, v1, p0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    sget-object v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    sget p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    if-nez p0, :cond_a

    sget-object p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_9

    :catchall_3
    move-exception p0

    goto :goto_a

    :cond_a
    :goto_9
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :goto_a
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :pswitch_5
    iget-object v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Landroidx/work/Configuration;

    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/Scheduler;

    iget-object v5, v1, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    invoke-static {v2, p0, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
