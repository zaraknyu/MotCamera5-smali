.class public final Lcom/motorola/camera/ui/uicomponents/TimerCountdown;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/countdown/TimerCountdownCallback;


# static fields
.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public final counterText$delegate:Ljava/lang/Object;

.field public final gestureTimerAnimation$delegate:Ljava/lang/Object;

.field public final gestureTimerLayout$delegate:Ljava/lang/Object;

.field public final gestureTimerProgress$delegate:Ljava/lang/Object;

.field public isRunning:Z

.field public mGestureType:I

.field public mIsFullPane:Z

.field public mStyle:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

.field public playTone:Z

.field public progressBarAnimator:Landroid/animation/ObjectAnimator;

.field public totalTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CREATE_FINAL_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->gestureTimerLayout$delegate:Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->gestureTimerAnimation$delegate:Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->gestureTimerProgress$delegate:Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->counterText$delegate:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->playTone:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mGestureType:I

    return-void
.end method


# virtual methods
.method public final animateProgress(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    const-string/jumbo v1, "progress"

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->progressBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final counterTextAnimation(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mStyle:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->DEFAULT:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    if-ne p0, p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda16;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda16;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final getCounterText()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->counterText$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getGestureTimerAnimation()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->gestureTimerAnimation$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public final getGestureTimerLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->gestureTimerLayout$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final getGestureTimerProgress()Landroid/widget/ProgressBar;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->gestureTimerProgress$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    :cond_0
    return-void
.end method

.method public final onCountDownCancel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->isRunning:Z

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCountDownFinish()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->isRunning:Z

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TIMER_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final onCountdown(II)V
    .locals 2

    iget-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->isRunning:Z

    if-nez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->isRunning:Z

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->totalTime:I

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mStyle:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->DEFAULT:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mActivePhotoDivert:Lcom/motorola/camera/mediacodec/ActivePhotoJpegDivert;

    if-eqz v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->playTone:Z

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->playTone:Z

    if-eqz p2, :cond_4

    const/16 p2, 0x7d0

    if-gt p1, p2, :cond_3

    iget p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->totalTime:I

    const/16 v0, 0x1388

    if-lt p2, v0, :cond_3

    sget-object p2, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->BEEP_TWICE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->BEEP_ONCE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    :goto_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/common/base/Splitter;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;)V

    :cond_4
    new-instance p2, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v0, 0x14

    invoke-direct {p2, p1, v0, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mIsFullPane:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mIsFullPane:Z

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v1, 0x10

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->setLocation()V

    return-void
.end method

.method public final declared-synchronized setLocation()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    const-string v1, "getLayoutManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const-string v3, "getLayoutManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v2

    const/16 v3, 0xb4

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mStyle:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    sget-object v5, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    if-ne v2, v5, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x421c0000    # 39.0f

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    :cond_3
    move v1, v2

    :cond_4
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0x5a

    if-eq v0, v3, :cond_6

    const/16 v5, 0x10e

    if-ne v0, v5, :cond_f

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v1, v1

    add-float/2addr v2, v1

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v1, v1

    sub-float/2addr v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_6

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v2

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float v1, v2, v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_6

    :cond_a
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mStyle:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    sget-object v5, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->LONG_EXPOSURE:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    if-eq v2, v5, :cond_e

    sget-object v5, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->TIME_CLOCK:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    if-ne v2, v5, :cond_b

    goto/16 :goto_5

    :cond_b
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-ne v5, v3, :cond_c

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v0

    mul-float/2addr v0, v1

    sub-float/2addr v2, v0

    goto :goto_4

    :cond_c
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->top:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    :goto_4
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Landroid/util/Size;

    invoke-direct {v0, v3}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v0, v3}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    const/high16 v2, 0x43210000    # 161.0f

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    add-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v0

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_f
    :goto_6
    monitor-exit p0

    return-void

    :goto_7
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CREATE_FINAL_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_0
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    :goto_1
    const-string v3, "CANCELLED"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-static {v3}, Lcom/motorola/camera/countdown/TimerCountdownManager;->stop(Z)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CAPTURE_FINISH"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {v3}, Lcom/motorola/camera/countdown/TimerCountdownManager;->stop(Z)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CAPTURE_FINISH"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {v3}, Lcom/motorola/camera/countdown/TimerCountdownManager;->stop(Z)V

    goto/16 :goto_8

    :cond_6
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    const-string v1, "AIR_GESTURE_TYPE"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mGestureType:I

    const-string v1, "TIMER"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mGestureType:I

    if-lez v1, :cond_9

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->DEFAULT:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    :goto_3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->updateStyle(Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v1

    iget-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mIsFullPane:Z

    if-ne v2, v1, :cond_a

    goto :goto_4

    :cond_a
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mIsFullPane:Z

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v1, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    :goto_4
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/motorola/camera/countdown/TimerCountdownManager;->registerCallback(Lcom/motorola/camera/countdown/TimerCountdownCallback;)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-nez p1, :cond_d

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.motorola.camera5.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera5.EXTRA_ACTION"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera5.EXTRA_CONTENT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera5.EXTRA_COUNTDOWN_TIMER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.motorola.camera5.EXTRA_COUNTDOWN_TIMER_TYPE"

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mGestureType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8

    :cond_d
    :goto_5
    new-instance p1, Lcom/motorola/camera/utility/BoostManager$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/BoostManager$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_e
    :goto_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeed()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_f

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->TIME_CLOCK:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->updateStyle(Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;)V

    goto :goto_7

    :cond_f
    sget-object p1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->LONG_EXPOSURE:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->updateStyle(Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;)V

    :goto_7
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/motorola/camera/countdown/TimerCountdownManager;->registerCallback(Lcom/motorola/camera/countdown/TimerCountdownCallback;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeed()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Lcom/motorola/camera/countdown/TimerCountdownManager;->start(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    :goto_8
    monitor-exit p0

    return-void

    :goto_9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized updateStyle(Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mStyle:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mStyle:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
