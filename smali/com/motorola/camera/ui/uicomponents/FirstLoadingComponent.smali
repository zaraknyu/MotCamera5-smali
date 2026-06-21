.class public final Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# instance fields
.field public captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public galleryThumbnailYGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public modeMenuBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public modeMenuTopGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public modePillArea:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public modePillYGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public needUpdateVerticalPosition:Z


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final init$1()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailYGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillYGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modeMenuBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modeMenuTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a02d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->setCaptureBarGuidelinePosition$1(Z)V

    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->setCaptureBarGuidelinePosition$1(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->updateVerticalPosition()V

    return-void
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->setCaptureBarGuidelinePosition$1(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->updateVerticalPosition()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->needUpdateVerticalPosition:Z

    return-void
.end method

.method public final rotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->updateVerticalPosition()V

    return-void
.end method

.method public final setCaptureBarGuidelinePosition$1(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarGuideLine()F

    move-result v2

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_0
    const-string p1, "getLayoutManager(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillYGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_2

    invoke-static {v1, p0, p1}, Lcom/motorola/camera/utility/ColorUtil;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    :cond_2
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v0, 0x11

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final updateVerticalPosition()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    const-string v1, "getLayoutManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v2

    iget v3, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modeMenuBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modeMenuTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modeMenuBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modeMenuTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_4
    :goto_0
    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v2

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v2, v0

    const v0, 0x7f07006b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailYGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_5

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillYGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_8

    float-to-int v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    return-void

    :cond_6
    const v0, 0x7f070182

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    const v0, 0x7f070069

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailYGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillYGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_8
    :goto_1
    return-void
.end method
