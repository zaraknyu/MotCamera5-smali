.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const-string v1, "ENABLE_CAROUSEL_VISIBLE"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/os/Bundle;

    const-string v1, "MENU_LEFT"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "MENU_TOP"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "MENU_TEXT"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "LAYOUT_WIDTH"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    const-string v5, "LAYOUT_HEIGHT"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    const-string v6, "LAYOUT_Y"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    const-string v7, "MENU_CELL_WIDTH"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    const-string v8, "MENU_CELL_HEIGHT"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    new-instance v10, Landroid/widget/TextView;

    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x9

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v6

    invoke-virtual {p0, v8, v8, v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    float-to-int v1, v5

    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    float-to-int v1, v4

    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :goto_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "LAYOUT_X"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "RELOAD_RIGHT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "CAROUSEL_SELECT_INDEX"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    const-string v6, "CAROUSEL_WIDTH"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "CAROUSEL_TEXT"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget v0, v5, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    const/high16 v7, 0x42600000    # 56.0f

    mul-float/2addr v0, v7

    float-to-int v0, v0

    move v7, v9

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_3

    new-instance v10, Landroid/widget/TextView;

    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v10, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    const/16 v2, 0x8

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v7

    const/high16 v10, 0x41d00000    # 26.0f

    sub-float/2addr v7, v10

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v7, v0

    float-to-int v0, v7

    invoke-virtual {v4, v9, v9, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v4

    const/high16 v6, 0x41e00000    # 28.0f

    sub-float/2addr v4, v6

    iget v5, v5, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v9, v9, v9, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_5

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mTalkbackRootView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    move v1, v9

    :goto_5
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    if-ne v1, v3, :cond_6

    invoke-virtual {v4, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_6

    :cond_6
    invoke-virtual {v4, v9}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const-string v1, "LAYOUT_X"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mDeleteView:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    aget v4, p0, v3

    sub-int/2addr v4, v1

    const/4 v5, 0x1

    aget v5, p0, v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mDeleteView:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mAcceptView:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x2

    aget v4, p0, v4

    sub-int/2addr v4, v1

    const/4 v5, 0x3

    aget v5, p0, v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mAcceptView:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mPlayView:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x4

    aget v4, p0, v4

    sub-int/2addr v4, v1

    const/4 v5, 0x5

    aget p0, p0, v5

    sub-int/2addr p0, v1

    invoke-virtual {v2, v4, v3, v3, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mPlayView:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
