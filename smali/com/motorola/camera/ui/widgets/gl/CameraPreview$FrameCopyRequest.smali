.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;


# instance fields
.field public mFrameCopyCallback:Ljava/lang/Object;

.field public final mOffscreenTexture:Ljava/lang/Object;

.field public mRect:Ljava/lang/Object;

.field public mScale:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0148

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    const v0, 0x7f0a014b

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    .line 4
    sget v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->SHRUNKEN_SIZE:F

    .line 5
    sget v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->GROWN_SIZE:F

    div-float/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 9
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISPLAY_CUTOUT_PANTONE:Lcom/motorola/camera/AppFeatures$Feature;

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080109

    goto :goto_0

    :cond_0
    const v0, 0x7f080108

    .line 12
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 13
    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 14
    sget v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->GROWN_SIZE:F

    float-to-int v0, v0

    .line 15
    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 16
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;FLcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda9;Landroid/graphics/Rect;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    .line 24
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    .line 25
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    .line 26
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    .line 19
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    .line 20
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    return-void
.end method

.method public static floatBounceAnimator(Landroid/widget/ImageView;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    return-object p0
.end method


# virtual methods
.method public circleAnimatorSet(Landroid/widget/ImageView;Z)Landroid/animation/AnimatorSet;
    .locals 6

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez p2, :cond_2

    sget v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->DARK_ALPHA:F

    goto :goto_2

    :cond_2
    sget v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->BRIGHT_ALPHA:F

    :goto_2
    if-nez p2, :cond_3

    sget p2, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->BRIGHT_ALPHA:F

    goto :goto_3

    :cond_3
    sget p2, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->DARK_ALPHA:F

    :goto_3
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const-string v4, "SCALE_X"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->floatBounceAnimator(Landroid/widget/ImageView;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const-string v5, "SCALE_Y"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->floatBounceAnimator(Landroid/widget/ImageView;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const-string v4, "ALPHA"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->floatBounceAnimator(Landroid/widget/ImageView;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    filled-new-array {v3, p0, p1}, [Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v1}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-lt v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast v4, Lcom/airbnb/lottie/value/Keyframe;

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    return-object p0
.end method

.method public getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    return-object p0
.end method

.method public getEndProgress()F
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result p0

    return p0
.end method

.method public getStartDelayProgress()F
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result p0

    return p0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isValueChanged(F)Z
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v1

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    return v2
.end method
