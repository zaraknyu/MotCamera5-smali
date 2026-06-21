.class public final Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CallableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/Surface;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PREPARED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_0
    move-object v4, p1

    check-cast v4, Landroid/view/Surface;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/tinder/StateMachine;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :cond_1
    const/4 p1, 0x0

    if-nez v4, :cond_2

    const-string v0, "VideoMode"

    const-string v1, "onComplete: Surface result is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f12065a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_message"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2, v0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/tinder/StateMachine;

    iget-object v5, v5, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v1, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    move-object v1, v0

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/tinder/StateMachine;

    iget-object p1, p1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/tinder/StateMachine;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    instance-of p1, p1, Lcom/motorola/camera/device/exception/DriveStateUnknownException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f12011a

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f12017f

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x4

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v1, p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/tinder/StateMachine;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f12065a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error_message"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/tinder/StateMachine;

    iget-object v0, v0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/tinder/StateMachine;

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
