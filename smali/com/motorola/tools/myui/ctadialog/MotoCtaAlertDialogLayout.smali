.class public Lcom/motorola/tools/myui/ctadialog/MotoCtaAlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getGravity()I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    const v4, 0x800007

    and-int/2addr v2, v4

    const/16 v4, 0x10

    const/4 v5, 0x2

    if-eq v3, v4, :cond_1

    const/16 v4, 0x50

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, p5

    sub-int/2addr v3, p3

    sub-int p3, v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    div-int/2addr p5, v5

    add-int p3, p5, v3

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    if-nez p5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    :goto_1
    const/4 p5, 0x0

    :goto_2
    if-ge p5, v1, :cond_7

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v7, :cond_3

    move v7, v2

    :cond_3
    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    invoke-static {v7, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x5

    if-eq v7, v8, :cond_4

    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, p1

    goto :goto_4

    :cond_4
    sub-int v7, p2, v3

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_3
    sub-int/2addr v7, v8

    goto :goto_4

    :cond_5
    invoke-static {p4, v3, v5, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v7

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :goto_4
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v8

    add-int/2addr v3, v7

    add-int v8, p3, v4

    invoke-virtual {v0, v7, p3, v3, v8}, Landroid/view/View;->layout(IIII)V

    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v0

    add-int/2addr v4, p3

    move p3, v4

    :cond_6
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    move v7, v3

    :goto_0
    const/16 v8, 0x8

    if-ge v7, v6, :cond_5

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v8

    const v10, 0x7f0a048c

    if-ne v8, v10, :cond_1

    move-object v2, v9

    goto :goto_1

    :cond_1
    const v10, 0x7f0a00ab

    if-ne v8, v10, :cond_2

    move-object v4, v9

    goto :goto_1

    :cond_2
    const v10, 0x7f0a0102

    if-ne v8, v10, :cond_4

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v9

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void

    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    const-string v11, "0x%x"

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_3

    :cond_6
    move v2, v3

    move v13, v2

    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v4, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v12, v14

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v2, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_4

    :cond_7
    move v14, v3

    :goto_4
    if-eqz v5, :cond_9

    if-nez v7, :cond_8

    move v4, v3

    goto :goto_5

    :cond_8
    sub-int/2addr v9, v12

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_5
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v12, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v2, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_6

    :cond_9
    move v4, v3

    :goto_6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    if-eqz v5, :cond_b

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    const v15, 0x3f333333    # 0.7f

    mul-float/2addr v9, v15

    float-to-int v9, v9

    if-le v12, v9, :cond_b

    sub-int/2addr v9, v13

    sub-int/2addr v9, v14

    sub-int/2addr v12, v4

    if-nez v7, :cond_a

    move v4, v3

    goto :goto_7

    :cond_a
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_7
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v12, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v2, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_b
    move v4, v3

    move v5, v4

    :goto_8
    if-ge v4, v6, :cond_d

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v8, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    invoke-static {v7, v1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    move/from16 v4, p2

    invoke-static {v12, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v10, v1, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    :goto_9
    if-ge v7, v6, :cond_f

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v8, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_e

    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v4, p2

    goto :goto_9

    :cond_f
    return-void
.end method
