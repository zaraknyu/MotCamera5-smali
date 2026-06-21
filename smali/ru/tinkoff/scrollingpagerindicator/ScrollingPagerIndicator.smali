.class public Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public autoRtl:Z

.field public final colorEvaluator:Landroid/animation/ArgbEvaluator;

.field public dotColor:I

.field public dotCountInitialized:Z

.field public final dotMinimumSize:I

.field public final dotNormalSize:I

.field public dotScale:Landroid/util/SparseArray;

.field public final dotSelectedSize:I

.field public final firstDotDrawable:Landroid/graphics/drawable/Drawable;

.field public firstDotOffset:F

.field public infiniteDotCount:I

.field public itemCount:I

.field public final lastDotDrawable:Landroid/graphics/drawable/Drawable;

.field public looped:Z

.field public orientation:I

.field public final paint:Landroid/graphics/Paint;

.field public selectedDotColor:I

.field public final spaceBetweenDotCenters:I

.field public visibleDotCount:I

.field public visibleDotThreshold:I

.field public visibleFramePosition:F

.field public visibleFrameWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const v0, 0x7f040494

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->autoRtl:Z

    sget-object v2, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator:[I

    const v3, 0x7f130209

    invoke-virtual {p1, p2, v2, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotNormalSize:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-gt v4, v0, :cond_0

    move v3, v4

    :cond_0
    iput v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotMinimumSize:I

    const/4 v3, 0x5

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    add-int/2addr v3, v0

    iput v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setVisibleDotCount(I)V

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    const/16 v3, 0x9

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->lastDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotCount(I)V

    div-int/2addr v0, v2

    if-ltz v0, :cond_8

    if-eqz v0, :cond_1

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-ge v0, p1, :cond_8

    :cond_1
    iget-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-gt p1, v2, :cond_6

    if-le p1, v1, :cond_6

    :cond_2
    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez p1, :cond_4

    invoke-virtual {p0, v3, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(FI)V

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    add-int/lit8 v3, p1, -0x1

    if-ge v0, v3, :cond_3

    add-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, v2, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(FI)V

    goto :goto_0

    :cond_3
    if-le p1, v1, :cond_5

    invoke-virtual {p0, v2, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(FI)V

    goto :goto_0

    :cond_4
    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, v3, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(FI)V

    invoke-virtual {p0, v2, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(FI)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-nez p1, :cond_7

    invoke-virtual {p0, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->adjustFramePosition(I)V

    goto :goto_1

    :cond_7
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->adjustFramePosition(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "page must be [0, adapter.getItemCount())"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return-void
.end method

.method private getDotCount()I
    .locals 2

    iget-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le v0, v1, :cond_0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->infiniteDotCount:I

    return p0

    :cond_0
    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    return p0
.end method


# virtual methods
.method public final adjustFramePosition(I)V
    .locals 6

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    iput v2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    return-void

    :cond_0
    iget-boolean v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    iget v4, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v3, :cond_3

    if-le v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p1

    int-to-float v0, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, p1

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr p1, v5

    sub-float/2addr v0, p1

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result v0

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget v2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr v2, v5

    add-float/2addr v2, v1

    invoke-virtual {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    invoke-virtual {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p1

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr v0, v5

    sub-float/2addr p1, v0

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    return-void

    :cond_1
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr v1, v5

    add-float/2addr p1, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    sub-float/2addr v0, v1

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    :cond_2
    return-void

    :cond_3
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->infiniteDotCount:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p1

    int-to-float v0, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, p1

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr p1, v5

    sub-float/2addr v0, p1

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    return-void
.end method

.method public getDotColor()I
    .locals 0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    return p0
.end method

.method public final getDotOffsetAt(I)F
    .locals 1

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotOffset:F

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    mul-int/2addr p1, p0

    int-to-float p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    return p0
.end method

.method public getSelectedDotColor()I
    .locals 0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    return p0
.end method

.method public getVisibleDotCount()I
    .locals 0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    return p0
.end method

.method public getVisibleDotThreshold()I
    .locals 0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotCount()I

    move-result v2

    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    if-ge v2, v3, :cond_0

    goto/16 :goto_a

    :cond_0
    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    iget v4, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotNormalSize:I

    const/4 v5, 0x2

    iget v6, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    const v9, 0x3f5b6db7

    int-to-float v10, v6

    mul-float/2addr v10, v9

    iget v9, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget v11, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotOffset:F

    sub-float v11, v9, v11

    float-to-int v11, v11

    div-int/2addr v11, v6

    iget v12, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    add-float/2addr v9, v12

    invoke-virtual {v0, v11}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result v12

    sub-float/2addr v9, v12

    float-to-int v9, v9

    div-int/2addr v9, v6

    add-int/2addr v9, v11

    if-nez v11, :cond_1

    add-int/lit8 v6, v9, 0x1

    if-le v6, v2, :cond_1

    add-int/lit8 v9, v2, -0x1

    :cond_1
    move v6, v11

    :goto_0
    if-gt v6, v9, :cond_15

    invoke-virtual {v0, v6}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result v12

    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    cmpl-float v14, v12, v13

    if-ltz v14, :cond_14

    iget v14, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    add-float v15, v13, v14

    cmpg-float v15, v12, v15

    if-gez v15, :cond_14

    iget-boolean v15, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    const/16 v16, 0x0

    const/high16 v17, 0x40000000    # 2.0f

    if-eqz v15, :cond_4

    iget v15, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    move/from16 v18, v5

    iget v5, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le v15, v5, :cond_5

    div-float v14, v14, v17

    add-float/2addr v14, v13

    sub-float v5, v14, v10

    cmpl-float v5, v12, v5

    if-ltz v5, :cond_2

    cmpg-float v5, v12, v14

    if-gtz v5, :cond_2

    sub-float v5, v12, v14

    add-float/2addr v5, v10

    div-float v16, v5, v10

    goto :goto_1

    :cond_2
    cmpl-float v5, v12, v14

    if-lez v5, :cond_3

    add-float v5, v14, v10

    cmpg-float v5, v12, v5

    if-gez v5, :cond_3

    sub-float v5, v12, v14

    div-float/2addr v5, v10

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v16, v13, v5

    :cond_3
    :goto_1
    move/from16 v5, v16

    goto :goto_2

    :cond_4
    move/from16 v18, v5

    :cond_5
    iget-object v5, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v16

    goto :goto_1

    :goto_2
    int-to-float v13, v4

    sub-int v14, v3, v4

    int-to-float v14, v14

    mul-float/2addr v14, v5

    add-float/2addr v14, v13

    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v15, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    move/from16 v16, v2

    const/4 v2, 0x1

    if-le v13, v15, :cond_c

    iget-boolean v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    if-nez v13, :cond_7

    if-eqz v6, :cond_6

    add-int/lit8 v13, v16, -0x1

    if-ne v6, v13, :cond_7

    :cond_6
    move v13, v8

    goto :goto_3

    :cond_7
    move v13, v7

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v15

    move/from16 v19, v3

    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-ne v3, v2, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v15

    :cond_8
    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float v20, v12, v3

    cmpg-float v20, v20, v13

    iget v2, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotMinimumSize:I

    if-gez v20, :cond_a

    sub-float v3, v12, v3

    mul-float/2addr v3, v14

    div-float/2addr v3, v13

    int-to-float v13, v2

    cmpg-float v13, v3, v13

    if-gtz v13, :cond_9

    goto :goto_4

    :cond_9
    cmpg-float v2, v3, v14

    if-gez v2, :cond_d

    goto :goto_5

    :cond_a
    sub-float v20, v12, v3

    int-to-float v15, v15

    sub-float v21, v15, v13

    cmpl-float v20, v20, v21

    if-lez v20, :cond_d

    move/from16 v20, v3

    neg-float v3, v12

    add-float v3, v3, v20

    add-float/2addr v3, v15

    mul-float/2addr v3, v14

    div-float/2addr v3, v13

    int-to-float v13, v2

    cmpg-float v13, v3, v13

    if-gtz v13, :cond_b

    :goto_4
    int-to-float v14, v2

    goto :goto_6

    :cond_b
    cmpg-float v2, v3, v14

    if-gez v2, :cond_d

    :goto_5
    move v14, v3

    goto :goto_6

    :cond_c
    move/from16 v19, v3

    :cond_d
    :goto_6
    iget v2, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v13, v5, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-ne v6, v11, :cond_e

    iget-object v2, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_e
    if-ne v6, v9, :cond_f

    iget-object v2, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->lastDotDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_11

    iget v5, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-nez v5, :cond_10

    iget v5, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float v5, v12, v5

    div-int/lit8 v13, v19, 0x2

    int-to-float v13, v13

    sub-float/2addr v5, v13

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    div-int/lit8 v14, v19, 0x2

    sub-int/2addr v13, v14

    iget v14, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float/2addr v12, v14

    div-int/lit8 v14, v19, 0x2

    int-to-float v14, v14

    add-float/2addr v12, v14

    float-to-int v12, v12

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v19, 0x2

    add-int/2addr v15, v14

    invoke-virtual {v2, v5, v13, v12, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_8

    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v13, v19, 0x2

    sub-int/2addr v5, v13

    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float v13, v12, v13

    div-int/lit8 v14, v19, 0x2

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v19, 0x2

    add-int/2addr v15, v14

    iget v14, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float/2addr v12, v14

    div-int/lit8 v14, v19, 0x2

    int-to-float v14, v14

    add-float/2addr v12, v14

    float-to-int v12, v12

    invoke-virtual {v2, v5, v13, v15, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_8
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    :cond_11
    iget v2, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-nez v2, :cond_13

    iget v2, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float/2addr v12, v2

    iget-boolean v2, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->autoRtl:Z

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v12, v2, v12

    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float v14, v14, v17

    invoke-virtual {v1, v12, v2, v14, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v5, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float/2addr v12, v5

    div-float v14, v14, v17

    invoke-virtual {v1, v2, v12, v14, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_14
    move/from16 v16, v2

    move/from16 v19, v3

    move/from16 v18, v5

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    move/from16 v5, v18

    move/from16 v3, v19

    goto/16 :goto_0

    :cond_15
    :goto_a
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    iget v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    iget v4, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    :cond_0
    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, v3

    add-int/2addr p1, v4

    goto :goto_0

    :cond_1
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-lt p1, v0, :cond_0

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    float-to-int p1, p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, p2

    goto :goto_1

    :cond_3
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    move p2, v4

    :cond_4
    move v4, p1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_7

    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    :cond_6
    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p2, v3

    add-int/2addr p2, v4

    goto :goto_2

    :cond_7
    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-lt p2, v0, :cond_6

    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    float-to-int p2, p2

    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_4

    goto :goto_3

    :cond_8
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_3
    invoke-virtual {p0, v4, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final scaleDotByOffset(FI)V
    .locals 1

    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :cond_1
    iget-object p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->autoRtl:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 2

    if-eqz p1, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Position must be [0, adapter.getItemCount()]"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->adjustFramePosition(I)V

    iget-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-ge v0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDotColor(I)V
    .locals 0

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDotCount(I)V
    .locals 3

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotCountInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotCountInitialized:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    if-ge p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    iget-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    if-eqz p1, :cond_2

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le p1, v2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    div-int/lit8 p1, v1, 0x2

    int-to-float p1, p1

    :goto_0
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotOffset:F

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    sub-int/2addr p1, v0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLooped(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSelectedDotColor(I)V
    .locals 0

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVisibleDotCount(I)V
    .locals 1

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->infiniteDotCount:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "visibleDotCount must be odd"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVisibleDotThreshold(I)V
    .locals 0

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
