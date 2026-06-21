.class public final Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/PanoShotStates;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/motorola/camera/PreviewSize;

    .line 5
    sget p3, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    .line 6
    sget v0, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    .line 7
    invoke-direct {p1, p3, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 8
    sget-object p3, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 9
    new-instance v0, Lcom/motorola/camera/panorama/PanoInitCallable;

    invoke-direct {v0, p1}, Lcom/motorola/camera/panorama/PanoInitCallable;-><init>(Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p3, v0}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 13
    const-string p3, "CAPTURING"

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/media/MediaActionSound;->play(I)V

    .line 19
    :cond_0
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "SEQ_ID"

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 21
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    return-void

    .line 23
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 24
    sget-object p1, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 25
    new-instance p2, Lcom/motorola/camera/panorama/PanoCleanupCallable;

    const/4 p3, 0x2

    const/4 v0, 0x0

    .line 26
    invoke-direct {p2, v0, p3}, Lcom/motorola/camera/panorama/PanoCleanupCallable;-><init>(Lcom/motorola/camera/panorama/PanoListener;I)V

    .line 27
    invoke-virtual {p1, p2}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    .line 28
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/MediaActionSound;->play(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
