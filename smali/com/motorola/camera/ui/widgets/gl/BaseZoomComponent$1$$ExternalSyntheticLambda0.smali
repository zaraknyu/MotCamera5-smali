.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/io/Serializable;

.field public final synthetic f$2:Ljava/io/Serializable;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;FI)V
    .locals 0

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$2:Ljava/io/Serializable;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$3:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$2:Ljava/io/Serializable;

    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$3:F

    if-eqz v3, :cond_0

    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, p0

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleOne:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4, p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->getDirectionX(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleTwo:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1, p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->getDirectionX(FF)F

    move-result p0

    invoke-virtual {v3, p0}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->hideAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleOne:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleTwo:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$2:Ljava/io/Serializable;

    check-cast v2, Lcom/motorola/camera/utility/ZoomSegment;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    if-eqz v3, :cond_b

    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isKnifeSwitchAllowedWhileRecording(Z)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_8
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->zoomingHapticFeedback()V

    :cond_9
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoFovSwitch:Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_FOV_SWITCH:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    if-eq v3, v2, :cond_a

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoFovSwitch:Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;

    iput-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mForbidAutoSwitch:Z

    :cond_a
    invoke-virtual {v0, v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;->f$3:F

    invoke-virtual {v0, v2, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onZoomChanged(Lcom/motorola/camera/utility/ZoomSegment;FZ)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
