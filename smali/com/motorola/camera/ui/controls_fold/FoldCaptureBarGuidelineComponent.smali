.class public final Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public bottomGuideLine:Landroidx/constraintlayout/widget/Guideline;

.field public cameraSwitchButton:Landroid/widget/FrameLayout;

.field public dualCaptureLensSwitchButton:Landroid/widget/FrameLayout;

.field public galleryButton:Landroid/widget/FrameLayout;

.field public leftGuideLine:Landroidx/constraintlayout/widget/Guideline;

.field public rightGuideLine:Landroidx/constraintlayout/widget/Guideline;

.field public shutterButton:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public topGuideLine:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final init$1()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->leftGuideLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->rightGuideLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->topGuideLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->bottomGuideLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->galleryButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->cameraSwitchButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->shutterButton:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->dualCaptureLensSwitchButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->setupGuidelines$1(Z)V

    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->setupGuidelines$1(Z)V

    return-void
.end method

.method public final onFoldScreenOrientationChanged(IIIZ)V
    .locals 0

    invoke-virtual {p0, p4}, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->setupGuidelines$1(Z)V

    return-void
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->setupGuidelines$1(Z)V

    return-void
.end method

.method public final setupGuidelines$1(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const-string v3, "getLayoutManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v6, :cond_4

    move-object v4, v5

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    :cond_4
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object v5, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->topGuideLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->bottomGuideLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    iget-object v7, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->leftGuideLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    iget-object v8, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->rightGuideLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez v8, :cond_9

    :goto_2
    return-void

    :cond_9
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    const v10, 0x7f070075

    const/4 v11, -0x1

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x7

    const/4 v15, 0x6

    if-eqz p1, :cond_d

    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "getContext(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getFoldGuideLine(Landroid/content/Context;Lcom/motorola/camera/EventListener;)Lkotlin/Pair;

    move-result-object v7

    iget-object v8, v7, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    iget-object v7, v7, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarMarginDimen()F

    move-result v1

    float-to-int v1, v1

    iput v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v11, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v10

    iput v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v10, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v10

    move v4, v12

    const/4 v12, 0x0

    move v11, v13

    const/4 v13, 0x7

    move/from16 v16, v11

    const/4 v11, 0x7

    move v4, v14

    move v14, v1

    move v1, v4

    move/from16 v4, v16

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v5, v8}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    invoke-virtual {v9, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->cameraSwitchButton:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v15, v10, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v1, v10, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v2, v8, v7, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :cond_a
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->galleryButton:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v15, v10, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v1, v10, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v2, v4, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :cond_b
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->shutterButton:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v15, v10, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v7, v1, v10, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v7, v4, v10, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v9, v2, v8, v6, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :cond_c
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->dualCaptureLensSwitchButton:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v9, v2, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v9, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v9, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v8, 0x4

    invoke-virtual {v9, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v15, v10, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v9, v2, v1, v10, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v9, v0, v8, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto/16 :goto_3

    :cond_d
    move v5, v13

    move v1, v14

    iput v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v9, v6, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v9, v6, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v15, v10, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v4, v1, v10, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v9, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->cameraSwitchButton:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v4, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v6, 0x4

    invoke-virtual {v9, v4, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v4, v15, v10, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v5, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v9, v2, v6, v10, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :cond_e
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->galleryButton:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v4, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v6, 0x4

    invoke-virtual {v9, v4, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v4, v1, v10, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v5, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v9, v2, v6, v10, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :cond_f
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->shutterButton:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v4, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v6, 0x4

    invoke-virtual {v9, v4, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v4, v15, v7, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v9, v4, v1, v7, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v5, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v9, v2, v6, v10, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :cond_10
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_fold/FoldCaptureBarGuidelineComponent;->dualCaptureLensSwitchButton:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v9, v2, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v9, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v9, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v6, 0x4

    invoke-virtual {v9, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v9, v2, v15, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v5, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v9, v0, v6, v10, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :cond_11
    :goto_3
    invoke-virtual {v9, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 0

    return-void
.end method
