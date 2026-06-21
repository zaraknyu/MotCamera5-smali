.class public final synthetic Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->$r8$clinit:I

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :pswitch_0
    sget v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->$r8$clinit:I

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.graphics.Rect"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mPlayHeadPosition:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mFrameWidth:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mSelectionStartFrame:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mSelectionEndFrame:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mCurrentFrame:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mCurrentFrame:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mFrameCallback:Lcom/motorola/camera/ui/widgets/TrimSeekBar$OnFrameUpdateCallback;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;->onFrameUpdate(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
