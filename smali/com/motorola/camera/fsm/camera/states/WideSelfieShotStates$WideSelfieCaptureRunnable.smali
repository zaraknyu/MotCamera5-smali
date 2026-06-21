.class public final Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public final mCaptureRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;->mCaptureRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->mImageIdArray:Ljava/util/ArrayList;

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v1, 0xb4

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 10
    iget-object v7, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    .line 11
    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;->mCaptureRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    move-object v5, p0

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/Result;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V

    .line 12
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 13
    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 16
    const-string p3, "WIDE_SELFIE_ROTATION_X"

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 17
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 18
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 20
    const-string p3, "WIDE_SELFIE_ROTATION_Y"

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 21
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 22
    const-string p1, "PANO_SELFIE_IMAGE_ID"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 25
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 26
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 28
    const-string p1, "WIDE_SELFIE_CAPTURE"

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object p0

    .line 30
    iget p1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    add-int/2addr p1, p3

    .line 31
    iput p1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    .line 32
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object p0

    .line 33
    iget p0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    const/4 p1, 0x3

    if-lt p0, p1, :cond_1

    .line 34
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
