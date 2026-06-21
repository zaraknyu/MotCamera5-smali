.class public final Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mLayoutHeightSpec:I

.field public mLayoutWidthSpec:I

.field public mPaddingBottom:I

.field public mPaddingHeight:I

.field public mPaddingTop:I

.field public mPaddingWidth:I

.field public final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static isSimilarSpec(III)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    if-ne p2, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    goto/16 :goto_12

    :cond_0
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    :cond_1
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v5, :cond_2

    goto/16 :goto_12

    :cond_2
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/core/Metrics;

    iget v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    iget v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    iget v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingTop:I

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingBottom:I

    add-int/2addr v11, v12

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Landroid/view/View;

    invoke-static {v6}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v14

    const/4 v15, 0x1

    const/4 v7, 0x2

    if-eqz v14, :cond_e

    if-eq v14, v15, :cond_d

    if-eq v14, v7, :cond_6

    const/4 v9, 0x3

    if-eq v14, v9, :cond_3

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_3
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    if-eqz v4, :cond_4

    iget v14, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    :goto_0
    if-eqz v3, :cond_5

    iget v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v14, v7

    :cond_5
    add-int/2addr v12, v14

    const/4 v7, -0x1

    invoke-static {v9, v12, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    goto :goto_5

    :cond_6
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    const/4 v9, -0x2

    invoke-static {v7, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v9, v15, :cond_7

    move v9, v15

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_1
    iget v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    const/4 v14, 0x2

    if-eq v12, v15, :cond_8

    if-ne v12, v14, :cond_b

    :cond_8
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    if-ne v12, v15, :cond_9

    const/4 v12, 0x1

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    :goto_2
    iget v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    if-eq v15, v14, :cond_c

    if-eqz v9, :cond_c

    if-eqz v9, :cond_a

    if-nez v12, :cond_c

    :cond_a
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    move v9, v7

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_3

    :cond_d
    const/high16 v14, 0x40000000    # 2.0f

    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    const/4 v9, -0x2

    invoke-static {v7, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_3

    :cond_e
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_3

    :goto_5
    invoke-static {v8}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v7

    if-eqz v7, :cond_19

    const/4 v12, 0x1

    if-eq v7, v12, :cond_18

    const/4 v14, 0x2

    if-eq v7, v14, :cond_12

    const/4 v10, 0x3

    if-eq v7, v10, :cond_f

    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_f
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    if-eqz v4, :cond_10

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_6

    :cond_10
    const/4 v4, 0x0

    :goto_6
    if-eqz v3, :cond_11

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v4, v3

    :cond_11
    add-int/2addr v11, v4

    const/4 v7, -0x1

    invoke-static {v0, v11, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_9

    :cond_12
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    const/4 v3, -0x2

    invoke-static {v0, v11, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v12, 0x1

    if-ne v3, v12, :cond_13

    move v3, v12

    goto :goto_7

    :cond_13
    const/4 v3, 0x0

    :goto_7
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    const/4 v14, 0x2

    if-eq v4, v12, :cond_14

    if-ne v4, v14, :cond_1a

    :cond_14
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    if-ne v4, v7, :cond_15

    const/4 v4, 0x1

    goto :goto_8

    :cond_15
    const/4 v4, 0x0

    :goto_8
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    if-eq v7, v14, :cond_17

    if-eqz v3, :cond_17

    if-eqz v3, :cond_16

    if-nez v4, :cond_17

    :cond_16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_17
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v0, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_9

    :cond_18
    const/high16 v14, 0x40000000    # 2.0f

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    const/4 v3, -0x2

    invoke-static {v0, v11, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_9

    :cond_19
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :cond_1a
    :goto_9
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_1b

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v4

    const/16 v7, 0x100

    invoke-static {v4, v7}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    if-ne v4, v7, :cond_1b

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    if-ge v4, v7, :cond_1b

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    if-ne v4, v7, :cond_1b

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    if-ge v4, v3, :cond_1b

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v3

    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-ne v3, v4, :cond_1b

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v3

    if-nez v3, :cond_1b

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-static {v3, v9, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-static {v3, v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    :cond_1b
    const/4 v10, 0x3

    if-ne v6, v10, :cond_1c

    const/4 v3, 0x1

    goto :goto_a

    :cond_1c
    const/4 v3, 0x0

    :goto_a
    if-ne v8, v10, :cond_1d

    const/4 v4, 0x1

    goto :goto_b

    :cond_1d
    const/4 v4, 0x0

    :goto_b
    const/4 v7, 0x4

    const/4 v12, 0x1

    if-eq v8, v7, :cond_1f

    if-ne v8, v12, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v8, 0x0

    goto :goto_d

    :cond_1f
    :goto_c
    move v8, v12

    :goto_d
    if-eq v6, v7, :cond_21

    if-ne v6, v12, :cond_20

    goto :goto_e

    :cond_20
    const/4 v12, 0x0

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v12, 0x1

    :goto_f
    const/4 v6, 0x0

    if-eqz v3, :cond_22

    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_22

    const/4 v7, 0x1

    goto :goto_10

    :cond_22
    const/4 v7, 0x0

    :goto_10
    if-eqz v4, :cond_23

    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v6, v10, v6

    if-lez v6, :cond_23

    const/4 v6, 0x1

    goto :goto_11

    :cond_23
    const/4 v6, 0x0

    :goto_11
    if-nez v13, :cond_24

    :goto_12
    return-void

    :cond_24
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    const/4 v14, 0x1

    if-eq v11, v14, :cond_26

    const/4 v14, 0x2

    if-eq v11, v14, :cond_26

    if-eqz v3, :cond_26

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v3, :cond_26

    if-eqz v4, :cond_26

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v3, :cond_25

    goto :goto_13

    :cond_25
    move-object/from16 v17, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1c

    :cond_26
    :goto_13
    instance-of v3, v13, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v3, :cond_27

    instance-of v3, v1, Landroidx/constraintlayout/core/widgets/Flow;

    if-eqz v3, :cond_27

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/core/widgets/Flow;

    move-object v4, v13

    check-cast v4, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v4, v3, v9, v0}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/core/widgets/Flow;II)V

    goto :goto_14

    :cond_27
    invoke-virtual {v13, v9, v0}, Landroid/view/View;->measure(II)V

    :goto_14
    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v11

    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v14, :cond_28

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_15

    :cond_28
    move v14, v3

    :goto_15
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v15, :cond_29

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_29
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v15, :cond_2a

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    :goto_16
    move/from16 v16, v0

    goto :goto_17

    :cond_2a
    move v15, v4

    goto :goto_16

    :goto_17
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v0, :cond_2b

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_2b
    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v0

    move-object/from16 v17, v5

    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    move-result v0

    if-nez v0, :cond_2d

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v7, :cond_2c

    if-eqz v8, :cond_2c

    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v6, v15

    mul-float/2addr v6, v5

    add-float/2addr v6, v0

    float-to-int v0, v6

    move v14, v0

    goto :goto_18

    :cond_2c
    if-eqz v6, :cond_2d

    if-eqz v12, :cond_2d

    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v6, v14

    div-float/2addr v6, v5

    add-float/2addr v6, v0

    float-to-int v0, v6

    move v15, v0

    :cond_2d
    :goto_18
    if-ne v3, v14, :cond_2f

    if-eq v4, v15, :cond_2e

    goto :goto_1a

    :cond_2e
    move v5, v11

    const/4 v3, 0x0

    :goto_19
    const/4 v7, -0x1

    goto :goto_1c

    :cond_2f
    :goto_1a
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v3, v14, :cond_30

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    :cond_30
    if-eq v4, v15, :cond_31

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1b

    :cond_31
    move/from16 v0, v16

    :goto_1b
    invoke-virtual {v13, v9, v0}, Landroid/view/View;->measure(II)V

    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v5

    move v14, v0

    move v15, v4

    goto :goto_19

    :goto_1c
    if-eq v5, v7, :cond_32

    const/4 v12, 0x1

    goto :goto_1d

    :cond_32
    move v12, v3

    :goto_1d
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v14, v0, :cond_34

    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v15, v0, :cond_33

    goto :goto_1e

    :cond_33
    move v7, v3

    goto :goto_1f

    :cond_34
    :goto_1e
    const/4 v7, 0x1

    :goto_1f
    iput-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    iget-boolean v0, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    if-eqz v0, :cond_35

    const/4 v12, 0x1

    :cond_35
    if-eqz v12, :cond_36

    const/4 v7, -0x1

    if-eq v5, v7, :cond_36

    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-eq v0, v5, :cond_36

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    :cond_36
    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    iput-boolean v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-static/range {v17 .. v17}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/core/Metrics;

    return-void
.end method
