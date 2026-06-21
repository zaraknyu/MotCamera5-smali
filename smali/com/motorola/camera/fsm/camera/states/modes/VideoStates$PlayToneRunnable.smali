.class public final Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public final mDelay:Z

.field public mForceDelay:Z

.field public final mMediaStatusListener:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

.field public final mSoundPlayListener:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;->mSoundPlayListener:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;->mMediaStatusListener:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;->mDelay:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TONE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isJapanCarrier()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 5
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    const-string p3, "audio"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 7
    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    array-length p3, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_4

    aget-object v1, p1, v0

    .line 9
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_3
    :goto_2
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 11
    sget-object p2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 12
    new-instance p3, Lcom/motorola/camera/device/callables/MediaPlayerCallable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;->mMediaStatusListener:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;->mDelay:Z

    invoke-direct {p3, v0, p0, p1, v1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;Landroid/os/Handler;Z)V

    invoke-virtual {p2, p3}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void

    .line 13
    :cond_4
    :goto_3
    sget-object p1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->VIDEO_RECORD:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;->mSoundPlayListener:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

    invoke-static {p1, p0}, Lcom/google/common/base/Splitter;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final setForceDelay()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;->mForceDelay:Z

    return-void
.end method
