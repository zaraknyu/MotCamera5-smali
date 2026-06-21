.class public final synthetic Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

.field public final synthetic f$1:F

.field public final synthetic f$2:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;FLcom/motorola/camera/ui/layoutmanager/LayoutValue;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;->f$1:F

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;->f$2:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;->f$3:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;->f$2:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->previewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->density:F

    iget-object v4, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v2, v5}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v2

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;->f$1:F

    const-string v6, "getValue(...)"

    const v7, 0x7f080101

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    iput v5, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    iput v5, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext$1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto/16 :goto_3

    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->previewSize:Lcom/motorola/camera/PreviewSize;

    sget-object v9, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v2, v9}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v9

    aget v2, v2, v9

    :goto_0
    if-eq v2, v8, :cond_3

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v0

    :goto_1
    mul-float/2addr v0, v3

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize(I)F

    move-result v0

    goto :goto_1

    :goto_2
    iput v0, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    iput v5, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext$1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->viewfinderGuide$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    iput v0, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext$1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v2, v0

    iput v2, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext$1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :goto_3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    if-nez v2, :cond_5

    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideTop$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;->f$3:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideBottom$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda30;->f$4:I

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    return-void
.end method
