.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "MCF_PROCESSING"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v8, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v8, v8, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mEarlyReprocScenes:Ljava/util/HashSet;

    const-string v9, "ALL_SCENES"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v8, v8, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mEarlyReprocScenes:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v8, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v8, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_2
    :goto_1
    move v6, v2

    :goto_2
    or-int/2addr v3, v6

    goto :goto_0

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_7

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfReprocList:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfReprocList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;->mReprocRequest:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    iget-boolean v5, v4, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-eqz v5, :cond_7

    iget-boolean v5, v4, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    if-nez v5, :cond_7

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_7
    :goto_4
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-ne v3, v5, :cond_8

    iget-object v3, v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    iget-boolean v3, v4, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    :goto_5
    monitor-exit v0

    goto :goto_7

    :goto_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_a
    :goto_7
    return-void

    :goto_8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
