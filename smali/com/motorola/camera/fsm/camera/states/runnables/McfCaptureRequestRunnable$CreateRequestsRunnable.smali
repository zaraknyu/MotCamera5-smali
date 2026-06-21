.class public Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RequestListener;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mBuilderList:Ljava/util/ArrayList;

.field public final mCameraId:Ljava/lang/String;

.field public final mCameraRunnable:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public mIsComplete:Z

.field public final mMcfMetadataList:Ljava/util/List;

.field public final mMcfReprocHolder:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;

.field public final mPriority:I

.field public final mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

.field public final mSeqIds:Ljava/util/ArrayList;

.field public final mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public final mTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$FrameTarget;Lcom/motorola/camera/mcf/McfMetadata;Ljava/util/ArrayList;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;Lcom/motorola/camera/mcf/Mcf$ShotSlot;ILandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    .line 3
    const-class p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->TAG:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraId:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 6
    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    .line 7
    invoke-static {p5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    .line 8
    iput-object p6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mBuilderList:Ljava/util/ArrayList;

    .line 10
    iput-object p9, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 11
    iput p10, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mPriority:I

    .line 12
    iput-object p8, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfReprocHolder:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;

    .line 13
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;

    invoke-direct {p1, p2, p0, p11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;Landroid/os/Handler;)V

    .line 14
    iput-object p7, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 15
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraRunnable:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Ljava/util/List;Ljava/util/ArrayList;Landroid/os/Handler;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    .line 18
    const-class p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->TAG:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 21
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    .line 22
    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    .line 23
    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/ArrayList;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mBuilderList:Ljava/util/ArrayList;

    .line 25
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mPriority:I

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfReprocHolder:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;

    .line 28
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;

    .line 29
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p2, p0, p3, p6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraRunnable:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mIsComplete:Z

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne v1, p1, :cond_4

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No job matching "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    if-nez v0, :cond_1

    const-string p1, "MCF request holder is null"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_1
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v7, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mBuilderList:Ljava/util/ArrayList;

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-ne v4, v5, :cond_2

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mFullFrameRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mReprocRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfReprocHolder:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;->mReprocRequest:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v3, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postCheckCaptureRunnables(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    :cond_4
    return-void
.end method

.method public onRequest(IILcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v4, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v7, 0x1

    iput-boolean v7, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mFromMcf:Z

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const/4 v8, 0x0

    if-ne v2, v3, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    iput-boolean v2, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mMcfFinalReproc:Z

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-virtual {v2, v0, p3, v3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const/4 v9, 0x0

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    iget-object v1, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mJpegThumbnailSize:Landroid/util/Size;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No JobHolder for SeqId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mPriority:I

    iput v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    iput-boolean v8, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mPriority:I

    invoke-static {v0, v1, v8, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->-$$Nest$smcopyRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;I)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    goto/16 :goto_a

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    :try_start_1
    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mPriority:I

    invoke-static {v2, v0, v7, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->-$$Nest$smcopyRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;I)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    goto :goto_3

    :cond_4
    move-object v2, v9

    :goto_3
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfMetadata;->getNeedJpegExifRequest()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iput-boolean v7, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v2, :cond_6

    iput-object v0, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    :cond_6
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mSwJpegForMetaReceivedListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;

    const-class v5, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v5

    :try_start_2
    sget-object v6, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v6, v6, Lcom/motorola/camera/saving/ImageCaptureManager;->mSwJpegImageReceivedListenerSet:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v6, 0x15

    invoke-direct {v5, v6, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-wide/16 v10, 0x4e20

    invoke-virtual {v3, v5, v0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isIspHidlSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfMetadata;->getNeedIspHidl()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata;->getNeedRAWFrame()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_CAPTURE_ISP_TUNING_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CAPTURE_ISP_TUNING_REQUEST_RAW_ON:[B

    invoke-virtual {v0, v3, v4, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_CAPTURE_ISP_TUNING_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CAPTURE_ISP_TUNING_REQUEST_YUV_ON:[B

    invoke-virtual {v0, v3, v4, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v0, :cond_9

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    :cond_9
    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_b

    instance-of v2, v0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    check-cast v0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    invoke-virtual {v0, p3}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata;->getPhyCameraIdForCaptureRequest()Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfMetadata;->getNeedRAWFrame()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    :goto_6
    move-object v5, v2

    goto :goto_7

    :cond_c
    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    goto :goto_6

    :goto_7
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;Lcom/motorola/camera/SecureDataHelper;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_9

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSatPhysicalCameraId:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->isPhysicalIdBackMain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForSmoothSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v5, v0, :cond_10

    move v6, v7

    goto :goto_8

    :cond_10
    move v6, v8

    :goto_8
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata;->getNeedFullFrame()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraId:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTargetWithPhysicalCamera(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata;->getNeedFullFrame()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0, v4, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_12
    :goto_9
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata;->getNeedPreviewFrame()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v2, v4, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte v1, v7

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->SNAPSHOT_METADATA_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v2, v0, v4, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_14
    :goto_a
    iget-object p3, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mMcfMetadataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/mcf/McfMetadata;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfMetadata;->getKeys()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata$Key;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v10, v6, Lcom/motorola/camera/settings/SettingsManager;->mAvailableCaptureRequestKeys:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupAvailableCaptureRequestKeys()V

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_f

    :cond_15
    :goto_c
    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager;->mAvailableCaptureRequestKeys:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_16

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_d

    :cond_16
    move-object v3, v9

    :goto_d
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_17

    :try_start_4
    invoke-virtual {v1, v0}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    const-string v3, "McfCaptureRequestRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "unsupported key with error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_17
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.lenovo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "org.codeaurora"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "com.exynos"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "org.quic"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "com.qti"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "com.mediatek"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_e

    :cond_18
    const-string v3, "McfCaptureRequestRunnable"

    const-string v5, "MCF setting unsupported key for cameraId="

    const-string v6, ": "

    invoke-static {v5, p3, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_19
    :goto_e
    :try_start_5
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata$Key;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    new-instance v6, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {v6, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_b

    :catch_3
    const-string v3, "McfCaptureRequestRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Custom vendor tag "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfMetadata$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported!"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :goto_f
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :cond_1a
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    iget-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mForceEvList:Z

    if-nez v3, :cond_1b

    goto/16 :goto_11

    :cond_1b
    if-ne p2, v7, :cond_1c

    iput-object v9, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    goto/16 :goto_11

    :cond_1c
    iget-object p2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p2, v1, :cond_1d

    invoke-virtual {p3, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInSensorCropEnableKey()Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    move-result-object p3

    iget p2, p2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mLastSensorCrop:I

    int-to-byte p2, p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p3, v0, v4, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_1d
    array-length p2, v3

    if-nez p1, :cond_1f

    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->CUSTOM_ZSL_NUM:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte v1, p2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p3, v0, v4, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result p3

    if-eqz p3, :cond_1e

    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CAPTURE_HINTFORISPFRAMEINDEX:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v4, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CAPTURE_HINTFORISPFRAMECOUNT:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v0, v4, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1e
    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->USE_CUSTOM_ZSL:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-virtual {p2, v0, v4, p3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->FRAME_INDEX:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v0, v4, p3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->FORCE_EV_INFO:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-virtual {p2, v0, v4, p3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_10
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->convertEvListToEvInfo([I)[I

    move-result-object p2

    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->EV_LIST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p3, v0, v4, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1f
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result p3

    if-eqz p3, :cond_20

    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CAPTURE_HINTFORISPFRAMEINDEX:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v4, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CAPTURE_HINTFORISPFRAMECOUNT:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v0, v4, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_11

    :cond_20
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->USE_CUSTOM_ZSL:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p3, v0, v4, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->FRAME_INDEX:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v4, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->CUSTOM_ZSL_NUM:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte p2, p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p3, v0, v4, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->EV_LIST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    new-array p3, v7, [I

    invoke-virtual {p2, v0, v4, p3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->FORCE_EV_INFO:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p2, v0, v4, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_11
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mBuilderList:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraRunnable:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CreateRequestsRunnable{mCameraId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mTarget:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
