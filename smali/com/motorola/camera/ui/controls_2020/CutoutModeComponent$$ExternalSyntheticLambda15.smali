.class public final synthetic Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleAnimPlaying:Z

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getScaleDuration()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleMargin(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getTextGroup()Landroidx/constraintlayout/widget/Group;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getScaleDuration()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedRunnable$delegate:Ljava/lang/Object;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getScaleDuration()J

    move-result-wide v4

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->fadeDuration$delegate:Ljava/lang/Object;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-virtual {v0, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleMargin(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBackground()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getInfoText()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getHeadlineText()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->updateLayout()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->fadeDuration$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getTextGroup()Landroidx/constraintlayout/widget/Group;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBackground()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedRunnable$delegate:Ljava/lang/Object;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleAnimPlaying:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getTextGroup()Landroidx/constraintlayout/widget/Group;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBackground()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedRunnable$delegate:Ljava/lang/Object;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleAnimPlaying:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getTextGroup()Landroidx/constraintlayout/widget/Group;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBackground()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedRunnable$delegate:Ljava/lang/Object;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->fadeDuration$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getTextGroup()Landroidx/constraintlayout/widget/Group;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getInfoText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getHeadlineText()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    :goto_1
    return-void

    :pswitch_b
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
