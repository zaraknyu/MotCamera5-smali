.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "SourceFile"


# instance fields
.field public final mScreenDensity:F

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    const p1, 0x7f12061f

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->mScreenDensity:F

    return-void
.end method


# virtual methods
.method public final afterShown()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->degree:F

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->rotate(F)V

    return-void
.end method

.method public final rotate(F)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->degree:F

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->cross:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v5

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    iget-object v7, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a02c4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/app/Activity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    cmpg-float v9, v1, v3

    const v10, 0x7f0705bd

    iget-object v11, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->context:Landroid/content/Context;

    const v12, 0x7f080372

    const/high16 v14, 0x43870000    # 270.0f

    iget v15, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->crossMargin:I

    const/high16 v16, 0x42b40000    # 90.0f

    const/high16 v17, 0x43b40000    # 360.0f

    const/high16 v18, 0x43340000    # 180.0f

    const/4 v13, -0x1

    if-nez v9, :cond_3

    sub-float v4, v17, v1

    invoke-virtual {v0, v4, v3, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    const-string v4, "getLayoutManager(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4, v13, v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v0

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v0, v15

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    :goto_0
    move/from16 v17, v14

    goto/16 :goto_4

    :cond_1
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4, v13, v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_0

    int-to-float v3, v8

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4, v13, v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_0

    :cond_3
    cmpg-float v6, v1, v16

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    cmpg-float v6, v1, v14

    if-nez v6, :cond_7

    :goto_1
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v6

    const/16 v10, 0xa

    const/16 v11, 0x9

    iget v13, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->mScreenDensity:F

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v6, :cond_5

    neg-int v6, v4

    int-to-float v6, v6

    div-float/2addr v6, v15

    int-to-float v5, v5

    div-float/2addr v5, v15

    add-float/2addr v6, v5

    int-to-float v8, v4

    div-float v15, v8, v15

    sub-float/2addr v15, v5

    int-to-float v5, v11

    mul-float/2addr v5, v13

    add-float/2addr v5, v15

    sub-float v11, v17, v1

    invoke-virtual {v0, v11, v6, v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v7, v10

    mul-float/2addr v7, v13

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v0, v5, v6, v4, v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_2

    :cond_5
    int-to-float v6, v4

    div-float v19, v6, v15

    int-to-float v5, v5

    div-float/2addr v5, v15

    sub-float v5, v19, v5

    int-to-float v11, v11

    mul-float/2addr v11, v13

    add-float/2addr v11, v5

    sub-float v15, v17, v1

    invoke-virtual {v0, v15, v5, v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    if-eqz v7, :cond_6

    int-to-float v5, v8

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v8, v11

    sub-float/2addr v5, v8

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    float-to-int v7, v8

    int-to-float v8, v10

    mul-float/2addr v8, v13

    add-float/2addr v8, v6

    float-to-int v6, v8

    invoke-virtual {v0, v5, v7, v4, v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    :cond_6
    :goto_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_0

    :cond_7
    cmpg-float v4, v1, v18

    if-nez v4, :cond_0

    sub-float v4, v17, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    move/from16 v17, v14

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v12, 0x7f0705bb

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    sub-int/2addr v6, v12

    int-to-float v6, v6

    invoke-virtual {v0, v4, v3, v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    if-eqz v7, :cond_9

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v0, v3, v4, v13, v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v0

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v0, v15

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v3

    sub-int/2addr v8, v3

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v8, v3

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v8, v3, v13, v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    :goto_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const v0, 0x7f080372

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setRotation(F)V

    :cond_9
    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x13

    const v4, 0x7f0a04bd

    const/4 v5, 0x3

    if-nez v9, :cond_a

    goto :goto_5

    :cond_a
    cmpg-float v6, v1, v16

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    cmpg-float v6, v1, v17

    if-nez v6, :cond_c

    :goto_5
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_6

    :cond_c
    cmpg-float v1, v1, v18

    if-nez v1, :cond_d

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :cond_d
    :goto_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final show()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->x:F

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->y:F

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x800033

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const v0, 0x800035

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->x:F

    float-to-int v4, v0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->y:F

    float-to-int v5, v0

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v7, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->SECONDARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;Landroid/view/View;)V

    return-void
.end method
