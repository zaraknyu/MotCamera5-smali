.class public abstract Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final contentLayout:Landroid/widget/RelativeLayout;

.field public final context:Landroid/content/Context;

.field public final cross:Landroid/widget/ImageView;

.field public final crossMargin:I

.field public degree:F

.field public height:I

.field public final parentView:Landroid/view/View;

.field public final popupWindow:Landroid/widget/PopupWindow;

.field public final screenWidth:I

.field public width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0121

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->parentView:Landroid/view/View;

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->popupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0a04c4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v3, 0x7f0a04bd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->contentLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a04c2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->cross:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0705bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->crossMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->screenWidth:I

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const p1, 0x7f13020a

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {p1, v5, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v5, v1}, Landroid/view/View;->measure(II)V

    new-instance v6, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;

    const/4 v7, 0x7

    invoke-direct {v6, v7, p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_1

    const v2, 0x7f120588

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a04c1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v5, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, p1, p1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x19

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->width:I

    return-void
.end method


# virtual methods
.method public afterDismiss()V
    .locals 0

    return-void
.end method

.method public afterShown()V
    .locals 0

    return-void
.end method

.method public clickControl()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    return-void
.end method

.method public final dismiss()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->parentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final getShowHeight()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->height:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->height:I

    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->height:I

    return p0
.end method

.method public final getShowWidth()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->width:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->width:I

    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->width:I

    return p0
.end method

.method public final show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->mRes:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->cross:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/16 v2, 0x12

    const/4 v3, 0x3

    const/16 v4, 0x13

    const v5, 0x7f0a04bd

    packed-switch p4, :pswitch_data_0

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p4, 0x6

    invoke-virtual {v0, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p4, 0x8

    invoke-virtual {v0, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p4, 0x11

    invoke-virtual {v0, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p4, 0x0

    invoke-virtual {v0, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/4 p5, 0x1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->context:Landroid/content/Context;

    if-eqz p4, :cond_2

    if-ne p4, p5, :cond_1

    const p4, 0x7f06047e

    invoke-static {v0, p4}, Lcom/motorola/camera/utility/ColorUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    const p4, 0x7f06047d

    invoke-static {v0, p4}, Lcom/motorola/camera/utility/ColorUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    :goto_1
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    instance-of p4, v0, Landroid/app/Activity;

    if-eqz p4, :cond_4

    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p4

    if-ne p4, p5, :cond_5

    const-string p0, "SingleTooltip"

    const-string p1, "Activity is not running, skip window show"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    sget-object p4, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p4, p6, p1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->afterShown()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final update(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method

.method public final updateLayout(FFF)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
