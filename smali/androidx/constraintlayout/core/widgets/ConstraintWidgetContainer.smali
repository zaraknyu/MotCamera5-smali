.class public final Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "SourceFile"


# instance fields
.field public final mBasicMeasureSolver:Landroidx/core/view/MenuHostHelper;

.field public mChildren:Ljava/util/ArrayList;

.field public final mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

.field public mHeightMeasuredTooSmall:Z

.field public mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mHorizontalChainsSize:I

.field public mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

.field public mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

.field public mIsRtl:Z

.field public final mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field public mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field public mOptimizationLevel:I

.field public mPaddingLeft:I

.field public mPaddingTop:I

.field public mPass:I

.field public final mSystem:Landroidx/constraintlayout/core/LinearSystem;

.field public mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mVerticalChainsSize:I

.field public mVerticalWrapMax:Ljava/lang/ref/WeakReference;

.field public mVerticalWrapMin:Ljava/lang/ref/WeakReference;

.field public final mWidgetsToAdd:Ljava/util/HashSet;

.field public mWidthMeasuredTooSmall:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    new-instance v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/core/view/MenuHostHelper;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    new-instance v2, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v2}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v2, 0x4

    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/16 v2, 0x101

    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidgetsToAdd:Ljava/util/HashSet;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public static measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v2, :cond_13

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v0, :cond_13

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v2, v0, v3

    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iput-boolean v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget v5, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    if-ne v5, v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_4

    move v6, v2

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-eqz v4, :cond_5

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    const/4 v7, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v8, :cond_7

    if-nez v6, :cond_7

    iput v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    if-eqz v4, :cond_6

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_6

    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    :cond_6
    move v0, v3

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v8, :cond_9

    if-nez v5, :cond_9

    iput v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    if-eqz v0, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v4, :cond_8

    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    :cond_8
    move v4, v3

    :cond_9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v8

    if-eqz v8, :cond_a

    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    move v0, v3

    :cond_a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v8

    if-eqz v8, :cond_b

    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    move v4, v3

    :cond_b
    const/4 v8, 0x4

    if-eqz v6, :cond_e

    aget v6, v1, v3

    if-ne v6, v8, :cond_c

    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    goto :goto_5

    :cond_c
    if-nez v4, :cond_e

    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    if-ne v4, v2, :cond_d

    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    goto :goto_4

    :cond_d
    iput v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    :goto_4
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v4

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    :cond_e
    :goto_5
    if-eqz v5, :cond_12

    aget v1, v1, v2

    if-ne v1, v8, :cond_f

    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    goto :goto_7

    :cond_f
    if-nez v0, :cond_12

    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    if-ne v0, v2, :cond_10

    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    goto :goto_6

    :cond_10
    iput v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    :goto_6
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    goto :goto_7

    :cond_11
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget-boolean p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    return-void

    :cond_13
    :goto_8
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    return-void
.end method


# virtual methods
.method public final addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/2addr p2, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    return-void

    :cond_1
    if-ne p2, v0, :cond_3

    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    add-int/2addr p2, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    :cond_2
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    invoke-direct {v2, p1, v0, v3}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    :cond_3
    return-void
.end method

.method public final addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eqz v4, :cond_8

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_8

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v7, :cond_7

    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    move v7, v2

    :goto_2
    iget v8, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v7, v8, :cond_7

    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v8, v8, v7

    iget-boolean v9, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v9, :cond_2

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_4

    :cond_2
    iget v9, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v9, :cond_5

    if-ne v9, v5, :cond_3

    goto :goto_3

    :cond_3
    if-eq v9, v3, :cond_4

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    :cond_4
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v5, v8, v5

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v5, v8, v2

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    move v6, v2

    :goto_5
    if-ge v6, v1, :cond_c

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/Flow;

    if-nez v8, :cond_9

    instance-of v9, v7, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v9, :cond_b

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {v7, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_11

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v8, Landroidx/constraintlayout/core/widgets/Flow;

    move v9, v2

    :goto_8
    iget v10, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v9, v10, :cond_d

    iget-object v10, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v10, v10, v9

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v8, p1, v0}, Landroidx/constraintlayout/core/widgets/Flow;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-ne v6, v7, :cond_c

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v7, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_a

    :cond_10
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    goto :goto_7

    :cond_11
    sget-boolean v4, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    if-eqz v4, :cond_16

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_b
    if-ge v4, v1, :cond_14

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Flow;

    if-nez v7, :cond_13

    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v7, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_14
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_15

    move v10, v2

    goto :goto_d

    :cond_15
    move v10, v5

    :goto_d
    const/4 v11, 0x0

    move-object v7, p0

    move-object v6, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v6, v8, p1}, Landroidx/constraintlayout/core/widgets/Chain;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_e

    :cond_16
    move-object v6, p0

    move-object v8, p1

    move p0, v2

    :goto_f
    if-ge p0, v1, :cond_1d

    iget-object p1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v4, :cond_1a

    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v7, v4, v2

    aget v4, v4, v5

    if-ne v7, v3, :cond_17

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    :cond_17
    if-ne v4, v3, :cond_18

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    :cond_18
    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    if-ne v7, v3, :cond_19

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    :cond_19
    if-ne v4, v3, :cond_1c

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    goto :goto_10

    :cond_1a
    invoke-static {v6, v8, p1}, Landroidx/constraintlayout/core/widgets/Chain;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/Flow;

    if-nez v4, :cond_1c

    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v4, :cond_1b

    goto :goto_10

    :cond_1b
    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    :cond_1c
    :goto_10
    add-int/lit8 p0, p0, 0x1

    goto :goto_f

    :cond_1d
    iget p0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    const/4 p1, 0x0

    if-lez p0, :cond_1e

    invoke-static {v6, v8, p1, v2}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    :cond_1e
    iget p0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez p0, :cond_1f

    invoke-static {v6, v8, p1, v5}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    :cond_1f
    return-void
.end method

.method public final directMeasureWithOrientation(IZ)Z
    .locals 13

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    move-result v3

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    move-result v6

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v7

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v8

    if-eqz p2, :cond_4

    const/4 v9, 0x2

    if-eq v3, v9, :cond_0

    if-ne v6, v9, :cond_4

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    if-ne v12, p1, :cond_1

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v11

    if-nez v11, :cond_1

    move p2, v2

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    if-ne v3, v9, :cond_4

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    invoke-virtual {p2, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    if-ne v6, v9, :cond_4

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    invoke-virtual {p0, v1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    invoke-virtual {p2, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    :cond_4
    :goto_0
    const/4 p2, 0x4

    if-nez p1, :cond_6

    aget v4, v4, v2

    if-eq v4, v5, :cond_5

    if-ne v4, p2, :cond_7

    :cond_5
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p2

    add-int/2addr p2, v7

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    sub-int/2addr p2, v7

    invoke-virtual {v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    :goto_1
    move p2, v5

    goto :goto_3

    :cond_6
    aget v4, v4, v5

    if-eq v4, v5, :cond_8

    if-ne v4, p2, :cond_7

    goto :goto_2

    :cond_7
    move p2, v2

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p2

    add-int/2addr p2, v8

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    sub-int/2addr p2, v8

    invoke-virtual {v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v7, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v7, p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v7, v1, :cond_a

    iget-boolean v7, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    if-nez v7, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v4, p1, :cond_d

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v4, v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v4, :cond_f

    goto :goto_6

    :cond_f
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v4, :cond_10

    goto :goto_6

    :cond_10
    instance-of v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-nez v4, :cond_c

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v0, :cond_c

    goto :goto_6

    :cond_11
    move v2, v5

    :goto_6
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    return v2
.end method

.method public final getSceneString(Ljava/lang/StringBuilder;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  actualWidth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  actualHeight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;)V

    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final layout()V
    .locals 33

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    aget v8, v5, v2

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPass:I

    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v9, :cond_1e

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    invoke-static {v9, v6}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    aget v14, v5, v2

    aget v15, v5, v6

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_0
    if-ge v2, v13, :cond_0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    if-ne v14, v6, :cond_1

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    :goto_1
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_2
    const/high16 v20, 0x3f000000    # 0.5f

    if-ge v6, v13, :cond_7

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v5

    move-object/from16 v5, v21

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v21, v6

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v6, :cond_6

    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    move/from16 v23, v14

    const/4 v14, 0x1

    if-ne v6, v14, :cond_5

    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    const/4 v14, -0x1

    if-eq v6, v14, :cond_2

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_3

    :cond_2
    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-eq v6, v14, :cond_3

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    iget v14, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    sub-int/2addr v6, v14

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v6, v14

    add-float v6, v6, v20

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    :cond_4
    :goto_3
    const/16 v23, 0x1

    :cond_5
    move/from16 v14, v23

    goto :goto_4

    :cond_6
    move/from16 v23, v14

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v6, :cond_5

    check-cast v5, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v5

    if-nez v5, :cond_5

    move/from16 v14, v23

    const/16 v19, 0x1

    :goto_4
    add-int/lit8 v6, v21, 0x1

    move-object/from16 v5, v22

    goto :goto_2

    :cond_7
    move-object/from16 v22, v5

    move/from16 v23, v14

    if-eqz v23, :cond_a

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v13, :cond_a

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v14, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v14, :cond_9

    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v14, v6, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    move/from16 v21, v5

    const/4 v5, 0x1

    if-ne v14, v5, :cond_8

    const/4 v5, 0x0

    invoke-static {v5, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    move/from16 v21, v5

    goto :goto_6

    :goto_7
    add-int/lit8 v6, v21, 0x1

    move v5, v6

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    invoke-static {v5, v1, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    if-eqz v19, :cond_c

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v13, :cond_c

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v14, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v14, :cond_b

    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    invoke-static {v14, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    goto :goto_9

    :cond_b
    const/4 v14, 0x1

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    const/4 v14, 0x1

    if-ne v15, v14, :cond_d

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    :goto_a
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_b
    if-ge v5, v13, :cond_13

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v19, v5

    instance-of v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v5, :cond_11

    check-cast v15, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v5, :cond_12

    iget v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_e

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_c

    :cond_e
    iget v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-eq v5, v6, :cond_f

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    iget v6, v15, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    sub-int/2addr v5, v6

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_c

    :cond_f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v5

    if-eqz v5, :cond_10

    iget v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v5, v5, v20

    float-to-int v5, v5

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    :cond_10
    :goto_c
    const/4 v6, 0x1

    goto :goto_d

    :cond_11
    instance-of v5, v15, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v5, :cond_12

    check-cast v15, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v5

    const/4 v15, 0x1

    if-ne v5, v15, :cond_12

    const/4 v14, 0x1

    :cond_12
    :goto_d
    add-int/lit8 v5, v19, 0x1

    goto :goto_b

    :cond_13
    if-eqz v6, :cond_15

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v13, :cond_15

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v15, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v15, :cond_14

    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v15, v6, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v15, :cond_14

    const/4 v15, 0x1

    invoke-static {v15, v6, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    invoke-static {v6, v1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    if-eqz v14, :cond_17

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v13, :cond_17

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v14, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v14, :cond_16

    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-static {v15, v6, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_17
    const/4 v5, 0x0

    :goto_10
    if-ge v5, v13, :cond_1b

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-static {v6}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v14

    if-eqz v14, :cond_1a

    sget-object v14, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->sMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-static {v6, v9, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    instance-of v14, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v14, :cond_19

    move-object v14, v6

    check-cast v14, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v14, :cond_18

    const/4 v14, 0x0

    invoke-static {v14, v6, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    goto :goto_11

    :cond_18
    const/4 v14, 0x0

    invoke-static {v14, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    goto :goto_11

    :cond_19
    const/4 v14, 0x0

    invoke-static {v14, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    invoke-static {v14, v6, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    :cond_1a
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1b
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v3, :cond_1f

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v6

    if-eqz v6, :cond_1d

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v6, :cond_1d

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v6, :cond_1d

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Flow;

    if-nez v6, :cond_1d

    iget-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    if-nez v6, :cond_1d

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    move-result v9

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    move-result v6

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1c

    iget v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v9, v15, :cond_1c

    if-ne v6, v10, :cond_1c

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v6, v15, :cond_1c

    goto :goto_13

    :cond_1c
    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-static {v5, v9, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    :cond_1d
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1e
    move-object/from16 v22, v5

    :cond_1f
    const/4 v5, 0x2

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    if-le v3, v5, :cond_20

    if-eq v8, v5, :cond_21

    if-ne v7, v5, :cond_20

    goto :goto_14

    :cond_20
    move-object/from16 v25, v12

    goto/16 :goto_3c

    :cond_21
    :goto_14
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/16 v13, 0x400

    invoke-static {v10, v13}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    move-result v10

    if-eqz v10, :cond_20

    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v14, :cond_24

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/16 v17, 0x0

    aget v5, v22, v17

    const/16 v18, 0x1

    aget v6, v22, v18

    move/from16 v23, v15

    iget-object v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    move-object/from16 v24, v15

    aget v15, v24, v17

    move-object/from16 v25, v12

    aget v12, v24, v18

    invoke-static {v5, v6, v15, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->validInGroup(IIII)Z

    move-result v5

    if-nez v5, :cond_22

    goto/16 :goto_3c

    :cond_22
    instance-of v2, v2, Landroidx/constraintlayout/core/widgets/Flow;

    if-eqz v2, :cond_23

    goto/16 :goto_3c

    :cond_23
    add-int/lit8 v15, v23, 0x1

    move-object/from16 v12, v25

    const/4 v5, 0x2

    goto :goto_15

    :cond_24
    move-object/from16 v25, v12

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_16
    if-ge v2, v14, :cond_37

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move/from16 v27, v2

    move-object/from16 v2, v26

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v26, v5

    const/16 v17, 0x0

    aget v5, v22, v17

    move-object/from16 v28, v6

    const/16 v18, 0x1

    aget v6, v22, v18

    move-object/from16 v29, v12

    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    move-object/from16 v30, v12

    aget v12, v30, v17

    move-object/from16 v31, v15

    aget v15, v30, v18

    invoke-static {v5, v6, v12, v15}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->validInGroup(IIII)Z

    move-result v5

    if-nez v5, :cond_25

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-static {v2, v10, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    :cond_25
    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v5, :cond_2a

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v12, v6, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v12, :cond_27

    if-nez v29, :cond_26

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_17

    :cond_26
    move-object/from16 v12, v29

    :goto_17
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_27
    move-object/from16 v12, v29

    :goto_18
    iget v15, v6, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    move/from16 v30, v5

    const/4 v5, 0x1

    if-ne v15, v5, :cond_29

    if-nez v26, :cond_28

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_19

    :cond_28
    move-object/from16 v5, v26

    :goto_19
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_29
    move-object/from16 v5, v26

    goto :goto_1a

    :cond_2a
    move/from16 v30, v5

    move-object/from16 v5, v26

    move-object/from16 v12, v29

    :goto_1a
    instance-of v6, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;

    if-eqz v6, :cond_32

    instance-of v6, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v6, :cond_2f

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v15

    if-nez v15, :cond_2c

    if-nez v28, :cond_2b

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    :cond_2b
    move-object/from16 v15, v28

    :goto_1b
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c
    move-object/from16 v26, v5

    goto :goto_1d

    :cond_2c
    move-object/from16 v15, v28

    goto :goto_1c

    :goto_1d
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v5

    move-object/from16 v32, v10

    const/4 v10, 0x1

    if-ne v5, v10, :cond_2e

    if-nez v31, :cond_2d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1e

    :cond_2d
    move-object/from16 v5, v31

    :goto_1e
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v31, v5

    :cond_2e
    move-object v6, v15

    :goto_1f
    move-object/from16 v15, v31

    goto :goto_22

    :cond_2f
    move-object/from16 v26, v5

    move-object/from16 v32, v10

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/core/widgets/HelperWidget;

    if-nez v28, :cond_30

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_20

    :cond_30
    move-object/from16 v6, v28

    :goto_20
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v31, :cond_31

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    goto :goto_21

    :cond_31
    move-object/from16 v15, v31

    :goto_21
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_32
    move-object/from16 v26, v5

    move-object/from16 v32, v10

    move-object/from16 v6, v28

    goto :goto_1f

    :goto_22
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v5, :cond_34

    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v5, :cond_34

    if-nez v30, :cond_34

    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v5, :cond_34

    if-nez v23, :cond_33

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    :cond_33
    move-object/from16 v5, v23

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v5

    :cond_34
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v5, :cond_36

    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v5, :cond_36

    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v5, :cond_36

    if-nez v30, :cond_36

    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v5, :cond_36

    if-nez v24, :cond_35

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    :cond_35
    move-object/from16 v5, v24

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v5

    :cond_36
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v5, v26

    move-object/from16 v10, v32

    goto/16 :goto_16

    :cond_37
    move-object/from16 v26, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v12

    move-object/from16 v31, v15

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v26, :cond_38

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v6, v12, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_23

    :cond_38
    const/4 v10, 0x0

    const/4 v12, 0x0

    if-eqz v28, :cond_39

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/HelperWidget;

    invoke-static {v6, v12, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    move-result-object v15

    invoke-virtual {v6, v12, v15, v2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    invoke-virtual {v15, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto :goto_24

    :cond_39
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v6, v12, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_25

    :cond_3a
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v6, v12, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_26

    :cond_3b
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-static {v10, v15, v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_27

    :cond_3c
    const/4 v12, 0x0

    const/4 v15, 0x0

    if-eqz v23, :cond_3d

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v10, v15, v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_28

    :cond_3d
    if-eqz v29, :cond_3e

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/Guideline;

    const/4 v15, 0x1

    invoke-static {v10, v15, v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_29

    :cond_3e
    const/4 v15, 0x1

    if-eqz v31, :cond_3f

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/HelperWidget;

    invoke-static {v10, v15, v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    move-result-object v5

    invoke-virtual {v10, v15, v5, v2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    const/4 v5, 0x7

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto :goto_2a

    :cond_3f
    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v5, :cond_40

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v10, 0x0

    const/4 v15, 0x1

    invoke-static {v6, v15, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_2b

    :cond_40
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v5, :cond_41

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v10, 0x0

    const/4 v15, 0x1

    invoke-static {v6, v15, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_2c

    :cond_41
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v5, :cond_42

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v10, 0x0

    const/4 v15, 0x1

    invoke-static {v6, v15, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_2d

    :cond_42
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v5, :cond_43

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v10, 0x0

    const/4 v15, 0x1

    invoke-static {v6, v15, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_2e

    :cond_43
    const/4 v10, 0x0

    const/4 v15, 0x1

    if-eqz v24, :cond_44

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v6, v15, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_2f

    :cond_44
    const/4 v5, 0x0

    :goto_30
    if-ge v5, v14, :cond_4b

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/16 v17, 0x0

    aget v12, v10, v17

    move/from16 v18, v15

    const/4 v15, 0x3

    if-ne v12, v15, :cond_49

    aget v10, v10, v18

    if-ne v10, v15, :cond_49

    iget v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x0

    :goto_31
    if-ge v15, v12, :cond_46

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v5

    move-object/from16 v5, v23

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    move/from16 v23, v12

    iget v12, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    if-ne v10, v12, :cond_45

    goto :goto_32

    :cond_45
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v23

    move/from16 v5, v24

    goto :goto_31

    :cond_46
    move/from16 v24, v5

    const/4 v5, 0x0

    :goto_32
    iget v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_33
    if-ge v12, v10, :cond_48

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    move/from16 v23, v10

    iget v10, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    if-ne v6, v10, :cond_47

    goto :goto_34

    :cond_47
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v23

    goto :goto_33

    :cond_48
    const/4 v15, 0x0

    :goto_34
    if-eqz v5, :cond_4a

    if-eqz v15, :cond_4a

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v15}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    const/4 v6, 0x2

    iput v6, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_49
    move/from16 v24, v5

    :cond_4a
    :goto_35
    add-int/lit8 v5, v24, 0x1

    const/4 v15, 0x1

    goto :goto_30

    :cond_4b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v15, 0x1

    if-gt v5, v15, :cond_4c

    goto/16 :goto_3c

    :cond_4c
    const/4 v6, 0x0

    aget v5, v22, v6

    const/4 v10, 0x2

    if-ne v5, v10, :cond_50

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v10, v6

    const/4 v12, 0x0

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v14, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    if-ne v14, v15, :cond_4d

    goto :goto_36

    :cond_4d
    invoke-virtual {v13, v9, v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    move-result v14

    if-le v14, v10, :cond_4e

    move-object v12, v13

    move v10, v14

    :cond_4e
    const/4 v6, 0x0

    goto :goto_36

    :cond_4f
    if-eqz v12, :cond_50

    invoke-virtual {v1, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_37

    :cond_50
    const/4 v12, 0x0

    :goto_37
    aget v5, v22, v15

    const/4 v6, 0x2

    if-ne v5, v6, :cond_54

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_51
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v13, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    if-nez v13, :cond_52

    goto :goto_38

    :cond_52
    invoke-virtual {v10, v9, v15}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    move-result v13

    if-le v13, v5, :cond_51

    move-object v6, v10

    move v5, v13

    goto :goto_38

    :cond_53
    if-eqz v6, :cond_54

    invoke-virtual {v1, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_39

    :cond_54
    const/4 v6, 0x0

    :goto_39
    if-nez v12, :cond_55

    if-eqz v6, :cond_5a

    :cond_55
    const/4 v6, 0x2

    if-ne v8, v6, :cond_57

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_56

    if-lez v0, :cond_56

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    goto :goto_3a

    :cond_56
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    :cond_57
    :goto_3a
    const/4 v6, 0x2

    if-ne v7, v6, :cond_59

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    if-ge v4, v2, :cond_58

    if-lez v4, :cond_58

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    goto :goto_3b

    :cond_58
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    :cond_59
    :goto_3b
    move v2, v0

    const/4 v0, 0x1

    goto :goto_3d

    :cond_5a
    :goto_3c
    move v2, v0

    const/4 v0, 0x0

    :goto_3d
    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v6

    if-nez v6, :cond_5c

    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v6

    if-eqz v6, :cond_5b

    goto :goto_3e

    :cond_5b
    const/4 v6, 0x0

    goto :goto_3f

    :cond_5c
    :goto_3e
    const/4 v6, 0x1

    :goto_3f
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    iput-boolean v12, v9, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    if-eqz v10, :cond_5d

    if-eqz v6, :cond_5d

    const/4 v15, 0x1

    iput-boolean v15, v9, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    goto :goto_40

    :cond_5d
    const/4 v15, 0x1

    :goto_40
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    aget v10, v22, v12

    const/4 v13, 0x2

    if-eq v10, v13, :cond_5f

    aget v10, v22, v15

    if-ne v10, v13, :cond_5e

    goto :goto_41

    :cond_5e
    move v10, v12

    goto :goto_42

    :cond_5f
    :goto_41
    const/4 v10, 0x1

    :goto_42
    iput v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v12, 0x0

    :goto_43
    if-ge v12, v3, :cond_61

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v14, :cond_60

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->layout()V

    :cond_60
    add-int/lit8 v12, v12, 0x1

    goto :goto_43

    :cond_61
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v12

    move v13, v0

    const/4 v0, 0x0

    const/4 v14, 0x1

    :goto_44
    if-eqz v14, :cond_75

    const/16 v18, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    invoke-virtual {v9}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    const/4 v5, 0x0

    iput v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    const/4 v0, 0x0

    :goto_45
    if-ge v0, v3, :cond_62

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v5, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :catch_0
    move-exception v0

    move/from16 v23, v10

    move-object/from16 v24, v11

    const/4 v10, 0x0

    const/4 v11, 0x5

    goto/16 :goto_4c

    :cond_62
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v23, v10

    move-object/from16 v24, v11

    const/4 v10, 0x5

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v14, v0, v5, v11, v10}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/4 v10, 0x0

    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    goto :goto_48

    :catch_1
    move-exception v0

    :goto_46
    const/4 v10, 0x0

    const/4 v11, 0x5

    :goto_47
    const/4 v14, 0x1

    goto/16 :goto_4c

    :catch_2
    move-exception v0

    move/from16 v23, v10

    move-object/from16 v24, v11

    goto :goto_46

    :cond_63
    move/from16 v23, v10

    move-object/from16 v24, v11

    :goto_48
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v10, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/4 v11, 0x5

    const/4 v14, 0x0

    invoke-virtual {v10, v5, v0, v14, v11}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/4 v10, 0x0

    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    :cond_64
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v5, v25

    :try_start_3
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v10

    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v11, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v25, v5

    const/4 v5, 0x0

    const/4 v14, 0x5

    :try_start_4
    invoke-virtual {v11, v0, v10, v5, v14}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/4 v10, 0x0

    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    goto :goto_49

    :catch_3
    move-exception v0

    move-object/from16 v25, v5

    goto :goto_46

    :cond_65
    :goto_49
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :try_start_6
    invoke-virtual {v10, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v11, 0x5

    const/4 v14, 0x0

    :try_start_7
    invoke-virtual {v10, v5, v0, v14, v11}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v10, 0x0

    :try_start_8
    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    goto :goto_4b

    :catch_4
    move-exception v0

    goto/16 :goto_47

    :catch_5
    move-exception v0

    :goto_4a
    const/4 v10, 0x0

    goto/16 :goto_47

    :catch_6
    move-exception v0

    const/4 v11, 0x5

    goto :goto_4a

    :catch_7
    move-exception v0

    goto/16 :goto_46

    :cond_66
    const/4 v10, 0x0

    const/4 v11, 0x5

    :goto_4b
    invoke-virtual {v9}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v14, 0x1

    goto :goto_4d

    :goto_4c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "EXCEPTION : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4d
    sget-object v0, Landroidx/constraintlayout/core/widgets/Chain;->sFlags:[Z

    if-eqz v14, :cond_6a

    const/16 v17, 0x0

    const/16 v19, 0x2

    aput-boolean v17, v0, v19

    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_4e
    if-ge v14, v11, :cond_69

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v5, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    move-object/from16 v27, v0

    iget v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    move/from16 v28, v10

    const/4 v10, -0x1

    if-ne v0, v10, :cond_67

    iget v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    if-eq v0, v10, :cond_68

    :cond_67
    const/16 v16, 0x1

    :cond_68
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v27

    move/from16 v10, v28

    const/16 v5, 0x40

    goto :goto_4e

    :cond_69
    move-object/from16 v27, v0

    const/4 v10, -0x1

    goto :goto_50

    :cond_6a
    move-object/from16 v27, v0

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    const/4 v0, 0x0

    :goto_4f
    if-ge v0, v3, :cond_6b

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v5, v9, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_6b
    const/16 v16, 0x0

    :goto_50
    const/16 v0, 0x8

    if-eqz v23, :cond_6e

    if-ge v15, v0, :cond_6e

    const/16 v19, 0x2

    aget-boolean v5, v27, v19

    if-eqz v5, :cond_6e

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_51
    if-ge v5, v3, :cond_6c

    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v0, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v28

    add-int v0, v28, v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v0, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    add-int/2addr v10, v0

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0x8

    const/4 v10, -0x1

    goto :goto_51

    :cond_6c
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v10, 0x2

    if-ne v8, v10, :cond_6d

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    if-ge v11, v0, :cond_6d

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    const/16 v17, 0x0

    aput v10, v22, v17

    const/4 v13, 0x1

    const/16 v16, 0x1

    :cond_6d
    if-ne v7, v10, :cond_6e

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    if-ge v0, v5, :cond_6e

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    const/16 v18, 0x1

    aput v10, v22, v18

    const/4 v13, 0x1

    const/16 v16, 0x1

    :cond_6e
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    if-le v0, v5, :cond_6f

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    const/4 v5, 0x1

    const/16 v17, 0x0

    aput v5, v22, v17

    move/from16 v16, v5

    move/from16 v18, v16

    goto :goto_52

    :cond_6f
    const/4 v5, 0x1

    move/from16 v18, v13

    :goto_52
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    if-le v0, v10, :cond_70

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    aput v5, v22, v5

    move v14, v5

    move/from16 v16, v14

    goto :goto_53

    :cond_70
    move/from16 v14, v18

    :goto_53
    if-nez v14, :cond_73

    const/16 v17, 0x0

    aget v0, v22, v17

    const/4 v10, 0x2

    if-ne v0, v10, :cond_71

    if-lez v2, :cond_71

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    if-le v0, v2, :cond_71

    iput-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    aput v5, v22, v17

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    move v14, v5

    move/from16 v16, v14

    :cond_71
    aget v0, v22, v5

    const/4 v10, 0x2

    if-ne v0, v10, :cond_72

    if-lez v4, :cond_72

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    if-le v0, v4, :cond_72

    iput-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    aput v5, v22, v5

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    const/16 v0, 0x8

    const/4 v13, 0x1

    const/16 v16, 0x1

    goto :goto_55

    :cond_72
    :goto_54
    move v13, v14

    const/16 v0, 0x8

    goto :goto_55

    :cond_73
    const/4 v10, 0x2

    goto :goto_54

    :goto_55
    if-le v15, v0, :cond_74

    const/4 v14, 0x0

    goto :goto_56

    :cond_74
    move/from16 v14, v16

    :goto_56
    move v0, v15

    move/from16 v10, v23

    move-object/from16 v11, v24

    const/16 v5, 0x40

    goto/16 :goto_44

    :cond_75
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v13, :cond_76

    const/16 v17, 0x0

    aput v8, v22, v17

    const/16 v18, 0x1

    aput v7, v22, v18

    :cond_76
    iget-object v0, v9, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroidx/core/view/MenuHostHelper;)V

    return-void
.end method

.method public final optimizeFor(I)Z
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    return-void
.end method

.method public final resetSolverVariables(Landroidx/core/view/MenuHostHelper;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/core/view/MenuHostHelper;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/core/view/MenuHostHelper;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateFromRuns(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
