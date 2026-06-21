.class public final synthetic Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUICli;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUICli;->updateGuidelinePosition()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    new-instance p2, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 p3, 0x17

    invoke-direct {p2, p3, p0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p7

    sub-int/2addr p5, p7

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result p7

    sub-int/2addr p5, p7

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p7

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p9

    sub-int/2addr p7, p9

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p7, p3

    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    invoke-static {p3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result p9

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    sub-int/2addr p9, v2

    if-nez p3, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    add-int/2addr p3, v2

    goto :goto_2

    :cond_5
    move p3, v0

    :goto_2
    sub-int/2addr v1, p3

    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    invoke-static {p3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result p3

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    invoke-static {v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, p3

    invoke-static {p9, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object p9, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    if-nez p9, :cond_6

    move v2, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p9}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p9

    instance-of v3, p9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_7

    check-cast p9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p9, p9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, p9

    add-int/2addr v2, v3

    :cond_7
    :goto_3
    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    const/4 p9, 0x1

    if-le p5, p3, :cond_9

    if-gt p7, v2, :cond_8

    goto :goto_4

    :cond_8
    move p3, v0

    goto :goto_5

    :cond_9
    :goto_4
    move p3, p9

    :goto_5
    iget-boolean p5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eq p5, p3, :cond_a

    iput-boolean p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    new-instance p3, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const/4 p5, 0x1

    invoke-direct {p3, p0, p5}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_b

    move v0, p9

    :cond_b
    iget-boolean p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-nez p2, :cond_c

    if-eqz v0, :cond_c

    new-instance p2, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/ui/PlayerControlView;

    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    move v1, p2

    move-object p2, p1

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    sub-int/2addr p4, v1

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_d

    if-eq p5, p9, :cond_e

    :cond_d
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateSettingsWindowSize()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    sub-int/2addr p0, p3

    sub-int p3, p0, v0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p0

    neg-int p0, p0

    sub-int p4, p0, v0

    const/4 p5, -0x1

    const/4 p6, -0x1

    invoke-virtual/range {p1 .. p6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_e
    return-void

    :pswitch_3
    move-object p2, p1

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mRootLocationOnWindow:[I

    invoke-virtual {p2, p0}, Landroid/view/View;->getLocationInWindow([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
