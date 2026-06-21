.class public final Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;
.super Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/countdown/TimerCountdownCallback;


# instance fields
.field public cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

.field public cliCountdownTextCounter:Landroid/widget/TextView;

.field public final countdownAnim:Landroid/view/animation/AlphaAnimation;

.field public gestureTimerAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field public gestureTimerLayout:Landroid/widget/FrameLayout;

.field public gestureTimerProgress:Landroid/widget/ProgressBar;

.field public final timer:I

.field public final timerType:I


# direct methods
.method public constructor <init>(IILcom/motorola/camera/cli/CliEventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    iput p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->timer:I

    iput p2, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->timerType:I

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->countdownAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p2, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public final animateProgress$1(FF)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerProgress:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string/jumbo v0, "progress"

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final onCountDownCancel()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onCountDownFinish()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->showBlinkAnimationAndClose()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onCountdown(II)V
    .locals 3

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2, p0, p2}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public final onViewAdded()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->acquireCliWakeLock()V

    invoke-static {p0}, Lcom/motorola/camera/countdown/TimerCountdownManager;->registerCallback(Lcom/motorola/camera/countdown/TimerCountdownCallback;)V

    iget p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->timer:I

    invoke-static {p0}, Lcom/motorola/camera/countdown/TimerCountdownManager;->start(I)V

    return-void
.end method

.method public final onViewInflated()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a00e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    const v2, 0x7f0a01f7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    const v2, 0x7f0a01f6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_3

    const v2, 0x7f0a01f8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerProgress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_4

    const v1, 0x7f0a00e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    :cond_4
    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-eqz p0, :cond_6

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    return-void
.end method

.method public final onViewRemoved()V
    .locals 0

    return-void
.end method

.method public final presentationLayoutRes()I
    .locals 0

    const p0, 0x7f0d0038

    return p0
.end method

.method public final showBlinkAnimationAndClose()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-nez p0, :cond_3

    :goto_0
    return-void

    :cond_3
    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    filled-new-array {v1, v0, v1}, [I

    move-result-object v0

    const-string v1, "backgroundColor"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
