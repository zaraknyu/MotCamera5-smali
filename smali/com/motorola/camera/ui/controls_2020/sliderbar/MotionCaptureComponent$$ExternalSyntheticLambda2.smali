.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

.field public final synthetic f$1:Lcom/google/zxing/Result;


# direct methods
.method public synthetic constructor <init>(Lcom/google/zxing/Result;Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->f$1:Lcom/google/zxing/Result;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;Lcom/google/zxing/Result;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->f$1:Lcom/google/zxing/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->f$1:Lcom/google/zxing/Result;

    invoke-virtual {v1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->hide()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->f$1:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->registerListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->registerFsmListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->hide()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->f$1:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->mActivePhotoSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSupportMotionCapture()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->registerListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->show()V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOTION_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v3, "getValue(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->showToggle(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->registerFsmListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f1205e6

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v4, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v1, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    const/16 v4, 0xbb8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->mActionShotOnTime:J

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->mShowActionShotOn:Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->controlFrame:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
