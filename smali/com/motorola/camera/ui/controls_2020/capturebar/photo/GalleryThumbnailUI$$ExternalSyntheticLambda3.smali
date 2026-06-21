.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/io/Serializable;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->f$1:Ljava/io/Serializable;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->f$1:Ljava/io/Serializable;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->getFrame()I

    move-result p1

    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->modeExitAnimSpeed:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    iget v4, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->modeExitAnimMaxFrame:I

    if-ge p1, v4, :cond_1

    :cond_0
    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v1, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->modeExitAnimMinFrame:I

    if-gt p1, v1, :cond_2

    :cond_1
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->playModeEnterLottieAnimate(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->f$1:Ljava/io/Serializable;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_3

    iget-boolean p1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_3

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getTransitionDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->crossFadeAnimDuration:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
