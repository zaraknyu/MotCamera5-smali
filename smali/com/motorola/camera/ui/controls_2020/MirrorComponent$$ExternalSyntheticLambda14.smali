.class public final synthetic Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->menuButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->menuButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$0:Z

    if-nez p0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08021c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08021b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iput-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessState:Z

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "getWindow(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "getAttributes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/high16 p0, -0x40800000    # -1.0f

    :goto_2
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void

    :pswitch_2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void

    :pswitch_3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020016

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0b0083

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v2, p0

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda22;

    invoke-direct {p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda22;-><init>(F)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p0, Landroidx/transition/Transition$3;

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_5

    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_5
    return-void

    :pswitch_4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz p0, :cond_c

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_6
    return-void

    :pswitch_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mirrorControlPanel:Landroid/view/View;

    if-eqz p0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mirrorControlPanel:Landroid/view/View;

    if-eqz p0, :cond_e

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
