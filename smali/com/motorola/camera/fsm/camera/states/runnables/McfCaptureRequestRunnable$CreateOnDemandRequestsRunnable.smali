.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;
.source "SourceFile"


# instance fields
.field public final mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$InstanceType;Ljava/util/List;Ljava/util/ArrayList;Landroid/os/Handler;)V
    .locals 7

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Ljava/util/List;Ljava/util/ArrayList;Landroid/os/Handler;)V

    iput-object p4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    return-void
.end method


# virtual methods
.method public final onRequest(IILcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->onRequest(IILcom/motorola/camera/fsm/RequestWrapper;)V

    iget-object p2, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->isAppResponsibleForSettingMfnrTags()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v3, p2, v4, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;ZZ)V

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    sget-object v5, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->QC_MFNR_BURST:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_1

    if-nez v2, :cond_1

    iget-object v5, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v5, p2, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->enableQcBurstMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mQcMfnrBurstRefCount:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iget-object v7, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, p2}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result v7

    monitor-enter v5

    :try_start_0
    iget v8, v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v8, v7

    iput v8, v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    move v2, v6

    :cond_2
    :goto_0
    iget-object v5, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v7, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    sget-object v7, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v7, v5, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    if-lez v8, :cond_3

    invoke-static {v5, p2}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result v8

    if-lez v8, :cond_3

    goto :goto_1

    :cond_3
    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v8, v5, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_7

    :goto_1
    iget-object v5, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-virtual {v7, v5, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    if-lez v7, :cond_5

    invoke-static {v5, p2}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result v5

    if-lez v5, :cond_5

    if-eqz v2, :cond_4

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mQcMfnrBurstRefCount:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->block()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    iget-object p3, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result p2

    invoke-static {p2, v4}, Lcom/motorola/camera/IqConfigManager;->mfnrProcessTimeEstimates(IZ)I

    move-result p2

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;

    if-eqz p2, :cond_6

    iget p2, p2, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;->estimate:I

    goto :goto_3

    :cond_6
    const p2, 0x7fffffff

    :goto_3
    new-instance p3, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;

    invoke-direct {p3}, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iput-wide v0, p3, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTimeStamp:J

    iput p2, p3, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mFrameCollectionTimeEst:I

    iget v0, p3, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mMiscTimeEst:I

    add-int/2addr v0, p2

    iput v0, p3, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTotalTimeEst:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mOnFullFrameListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->onProcessTimeEstimate(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;)V

    :cond_7
    return-void
.end method
