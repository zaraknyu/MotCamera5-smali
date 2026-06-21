.class public final Lcom/motorola/camera/ui/widgets/LevelerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAnimationCancel$com$motorola$camera$ui$controls_fold$gallery$GalleryComposeHelper$startItemAddAnim$lambda$8$$inlined$doOnStart$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationCancel$com$motorola$camera$ui$uicomponents$DisplayCutoutCircleComponent$inflateViewStub$$inlined$addListener$default$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationCancel$com$motorola$camera$ui$widgets$LevelerView$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationEnd$com$motorola$camera$ui$controls_fold$gallery$GalleryComposeHelper$startItemAddAnim$lambda$8$$inlined$doOnStart$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$motorola$camera$ui$controls_fold$gallery$GalleryComposeHelper$startItemAddAnim$lambda$8$$inlined$doOnStart$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$motorola$camera$ui$uicomponents$DisplayCutoutCircleComponent$inflateViewStub$$inlined$addListener$default$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$motorola$camera$ui$widgets$LevelerView$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationStart$com$motorola$camera$ui$uicomponents$DisplayCutoutCircleComponent$inflateViewStub$$inlined$addListener$default$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationStart$com$motorola$camera$ui$widgets$LevelerView$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->animateHide()V

    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/LevelerView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateMainLineResource()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_1
    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
