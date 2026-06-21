.class public abstract Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mContentLayout:Landroid/widget/RelativeLayout;

.field public mContentRes:I

.field public final mContentText:Landroid/widget/TextView;

.field public final mContext:Landroid/content/Context;

.field public final mCount:I

.field public final mCross:Landroid/view/View;

.field public final mCrossLayout:Landroid/widget/RelativeLayout;

.field public mHeight:I

.field public final mIndex:I

.field public final mIndexText:Landroid/widget/TextView;

.field public final mParentView:Landroid/view/View;

.field public final mPopWindow:Landroid/widget/PopupWindow;

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCount:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0120

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const v2, 0x7f0a04bd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;

    const/4 v4, 0x6

    invoke-direct {v3, v4, p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v2, 0x7f0a04c1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v2, 0x7f0a04c0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndexText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    add-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    const p4, 0x7f120618

    invoke-virtual {p1, p4, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const p1, 0x7f0a04bf

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    const p1, 0x7f0a04c3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCrossLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a04c2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    invoke-virtual {p2, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x19

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    :cond_4
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const p2, 0x7f13020a

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip$$ExternalSyntheticLambda1;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public abstract afterDismiss()V
.end method

.method public abstract clickControl()V
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->afterDismiss()V

    return-void
.end method

.method public final getShowHeight()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    return p0
.end method

.method public final getTextLineWidth()Ljava/lang/Float;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final reShow()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p0, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method

.method public abstract show()V
.end method

.method public final show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V
    .locals 14

    move-object/from16 v0, p4

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    .line 1
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "SequentialTooltip"

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2
    :goto_1
    const-string p0, "Activity is not running, skip window show"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 4
    iget v6, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->mRes:I

    .line 5
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    :cond_3
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCrossLayout:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_4

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    if-eqz v2, :cond_5

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_5

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_3

    :cond_5
    move-object v8, v3

    :goto_3
    if-eqz v7, :cond_e

    if-nez v8, :cond_6

    goto/16 :goto_5

    .line 8
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/16 v10, 0xe

    const/16 v11, 0x15

    const/4 v12, 0x3

    const v13, 0x7f0a04bd

    packed-switch v9, :pswitch_data_0

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unhandled cross location: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_0
    const/16 v0, 0x12

    .line 10
    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x13

    .line 11
    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v0, 0x6

    .line 12
    invoke-virtual {v7, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x8

    .line 13
    invoke-virtual {v7, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 14
    invoke-virtual {v7, v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 15
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_7

    .line 16
    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17
    iput v4, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eqz v6, :cond_7

    .line 18
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const/4 v0, 0x0

    .line 19
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 20
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 21
    iget v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 22
    iget v4, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v4, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 23
    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v0, 0xf

    .line 24
    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    .line 25
    :pswitch_1
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    .line 26
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    .line 27
    :pswitch_3
    invoke-virtual {v7, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 28
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    .line 29
    :pswitch_4
    invoke-virtual {v7, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 30
    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    .line 31
    :pswitch_5
    invoke-virtual {v7, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_4
    :pswitch_6
    if-eqz v2, :cond_8

    .line 32
    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    const v0, 0x7f06047d

    .line 33
    invoke-static {v1, v0}, Lcom/motorola/camera/utility/ColorUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_9
    if-eqz v2, :cond_a

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 36
    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndexText:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 37
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f120577

    .line 38
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    if-eqz v0, :cond_d

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 40
    :cond_d
    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    .line 41
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_e

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_e
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
