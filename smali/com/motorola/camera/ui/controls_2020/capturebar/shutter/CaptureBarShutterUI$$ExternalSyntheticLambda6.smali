.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$2:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$3:Z

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$4:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;

    iput-boolean p6, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$5:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getFrame()I

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$1:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$2:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->captureAnimMaxFrame:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v0

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllListeners()V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllUpdateListeners()V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$3:Z

    if-nez v0, :cond_1

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_NIGHT_VISION:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_NIGHT_VISION_SLOW:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v2

    iget v3, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->captureAnimMaxFrame:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$4:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;->onAnimationEnd()V

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->nextState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    :cond_3
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$$ExternalSyntheticLambda6;->f$5:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->playCaptureLottieAnimate(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;)V

    :cond_4
    return-void
.end method
