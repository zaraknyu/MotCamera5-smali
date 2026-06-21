.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureLottieAnimate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $currentState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public final synthetic $fillAfterAnimate:Z

.field public final synthetic $lottieAnimateListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureLottieAnimate$2;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureLottieAnimate$2;->$fillAfterAnimate:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureLottieAnimate$2;->$currentState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureLottieAnimate$2;->$lottieAnimateListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureLottieAnimate$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureLottieAnimate$2;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v0

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllListeners()V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllUpdateListeners()V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureLottieAnimate$2;->$fillAfterAnimate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureLottieAnimate$2;->$currentState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->captureAnimMaxFrame:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iput-boolean v0, p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->hasFixedDurationAnimate:Z

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureLottieAnimate$2;->$lottieAnimateListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;->onAnimationEnd()V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
