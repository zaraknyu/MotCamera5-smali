.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$1:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->enableClicks(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->disableClicks(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSessionRemosaicEstimate:[J

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v4

    if-eqz v4, :cond_1

    aget-wide v1, v3, v1

    goto :goto_1

    :cond_1
    aget-wide v1, v3, v2

    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mEngineMfnrEstimate:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    move-wide v1, v3

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->onCaptureEstimate(J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$1:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    move-result-object v0

    iput-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longClickable:Z

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$1:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_BURST_SHOT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v3, v4, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->playCaptureLottieAnimate(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;Z)V

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->disableClicks(Z)V

    :cond_3
    return-void

    :pswitch_3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v1

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mActivePhotoShotInterval:J

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setHasFixedDurationAnimate(Z)V

    new-instance p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-direct {p0, v1, v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;J)V

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->playCaptureLottieAnimate(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mActivePhotoShotInterval:J

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->playFixedDurationLottieAnimate(J)V

    :goto_2
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;->f$1:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {v1, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterState(IZ)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v1

    const/4 v5, 0x0

    const/16 v6, 0x20

    move v3, v2

    move v4, v2

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->playCaptureLottieAnimate$default(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;ZZZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;I)V

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
