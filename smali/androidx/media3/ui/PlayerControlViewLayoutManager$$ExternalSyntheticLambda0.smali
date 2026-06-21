.class public final synthetic Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v5, v2

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v2, v7, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v4, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v7

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_3

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v10

    add-int/2addr v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    if-le v2, v5, :cond_7

    if-eqz v1, :cond_4

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result p0

    add-int/2addr v2, p0

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    :goto_2
    if-ge v0, v8, :cond_6

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v2, v9

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gt v2, v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v6, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_8

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_5
    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    iget-boolean v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_6

    :cond_9
    move v4, v2

    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v0, :cond_12

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070152

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_c

    iget-boolean v5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v5, :cond_b

    move v1, v3

    :cond_b
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    instance-of v1, v0, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v1, :cond_12

    check-cast v0, Landroidx/media3/ui/DefaultTimeBar;

    iget-object v1, v0, Landroidx/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget-boolean v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_e

    iget-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    iput-boolean v6, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    iput v5, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_e
    iget v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    if-ne v4, v6, :cond_10

    iget-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    iput-boolean v3, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    iput v5, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_10
    const/4 v5, 0x3

    if-eq v4, v5, :cond_12

    iget-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    iput-boolean v3, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_12
    :goto_7
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->shownButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-boolean v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v4, :cond_13

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->shouldHideInMinimalMode(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v2

    goto :goto_9

    :cond_13
    move v4, v3

    :goto_9
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_14
    return-void

    :pswitch_5
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBars()V

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
