.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $handler:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->$handler:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAnimationCancel$com$motorola$camera$ui$controls_fold$gallery$GalleryComposeHelper$startItemAddAnim$lambda$8$$inlined$doOnEnd$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$motorola$camera$ui$controls_fold$gallery$GalleryComposeHelper$startItemAddAnim$lambda$8$$inlined$doOnEnd$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationStart$com$motorola$camera$ui$controls_fold$gallery$GalleryComposeHelper$startItemAddAnim$lambda$8$$inlined$doOnEnd$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p0, "animation"

    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "animator"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->$handler:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->$handler:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v0

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllListeners()V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllUpdateListeners()V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    return-void

    :pswitch_1
    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->$handler:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;->getLottieTimeout()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p0, "animation"

    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "animator"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p0, "animation"

    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "animator"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
