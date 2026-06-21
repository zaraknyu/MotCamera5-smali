.class public Lcom/motorola/camera/editor/ui/AdjustingMagnifier;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBoundary:Landroid/graphics/Rect;

.field public mComposeBitmap:Landroid/graphics/Bitmap;

.field public mComposeCanvas:Landroid/graphics/Canvas;

.field public mDisplayRect:Landroid/graphics/Rect;

.field public mFinalBitmap:Landroid/graphics/Bitmap;

.field public mFinalCanvas:Landroid/graphics/Canvas;

.field public mPaint:Landroid/graphics/Paint;

.field public mPosition:I

.field public mTargetRect:Landroid/graphics/Rect;

.field public mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    sget-object p1, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->NULL:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    return-void
.end method

.method private getDisplayRect()Landroid/graphics/Rect;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    move v2, v1

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    move v4, v1

    move v1, p0

    :goto_0
    move p0, v4

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v3, 0x2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    move v4, v1

    move v1, p0

    move p0, v0

    move v0, v4

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v1, 0x2

    iget p0, p0, Landroid/graphics/Rect;->right:I

    move v4, v0

    move v0, p0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    div-int/2addr p0, v1

    move v1, p0

    move p0, v0

    move v0, v3

    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p0, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public final onDocAdjusting(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_11

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gtz v2, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_4

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v4, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v2, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    move-object/from16 v7, p1

    invoke-virtual {v2, v7, v6, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_6

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {v0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-direct {v0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v8, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iget v10, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    const/4 v11, 0x5

    if-nez v10, :cond_7

    iput v11, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    :cond_7
    iget v10, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    invoke-static {v10}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v10

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eqz v10, :cond_9

    if-eq v10, v12, :cond_9

    if-eq v10, v14, :cond_8

    if-eq v10, v13, :cond_8

    goto :goto_1

    :cond_8
    iget-object v1, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit16 v1, v1, 0x190

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    add-int/lit16 v8, v8, -0xc8

    add-int/2addr v1, v6

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v7, v7, 0xc8

    goto/16 :goto_5

    :cond_9
    int-to-float v6, v6

    const/high16 v10, 0x3fc00000    # 1.5f

    div-float/2addr v6, v10

    div-float v10, v6, v8

    iget-object v15, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-nez v15, :cond_a

    sget-object v15, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->NULL:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    iput-object v15, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    :cond_a
    iget-object v15, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eqz v15, :cond_f

    if-eq v15, v12, :cond_e

    if-eq v15, v14, :cond_d

    if-eq v15, v13, :cond_c

    if-eq v15, v11, :cond_b

    const/4 v6, 0x7

    if-eq v15, v6, :cond_b

    :goto_1
    move v1, v4

    move v6, v1

    move v7, v6

    move v8, v7

    goto/16 :goto_5

    :cond_b
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit16 v6, v6, 0x190

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-int v6, v6

    div-int/lit8 v7, v6, 0x2

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, -0xc8

    sub-int/2addr v1, v7

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit16 v7, v7, 0xc8

    add-int/2addr v6, v1

    move/from16 v16, v8

    move v8, v1

    move v1, v7

    :goto_2
    move v7, v6

    move/from16 v6, v16

    goto/16 :goto_5

    :cond_c
    add-int/lit16 v7, v7, -0x258

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    float-to-int v6, v6

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    float-to-int v8, v10

    add-int/lit16 v10, v8, -0x258

    sub-int/2addr v1, v10

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v10, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_3
    add-int/2addr v6, v7

    add-int/2addr v8, v1

    move/from16 v16, v8

    move v8, v1

    move v1, v6

    move v6, v7

    move/from16 v7, v16

    goto/16 :goto_5

    :cond_d
    float-to-int v6, v6

    add-int/lit16 v8, v6, -0x258

    sub-int/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    float-to-int v8, v10

    add-int/lit16 v10, v8, -0x258

    sub-int/2addr v1, v10

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v10, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_e
    float-to-int v6, v6

    add-int/lit16 v8, v6, -0x258

    sub-int/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit16 v1, v1, -0x258

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    float-to-int v10, v10

    sub-int/2addr v8, v10

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_4
    add-int v1, v7, v6

    add-int v6, v8, v10

    move/from16 v16, v7

    goto/16 :goto_2

    :cond_f
    add-int/lit16 v7, v7, -0x258

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    float-to-int v6, v6

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit16 v1, v1, -0x258

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    float-to-int v10, v10

    sub-int/2addr v8, v10

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_4

    :goto_5
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6, v8, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v1, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {v3, v5, v10, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_10

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_10
    iget-object v1, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_11
    :goto_6
    iget-object v1, v0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final releaseResources()V
    .locals 2

    invoke-static {p0}, Lcom/motorola/camera/Util;->recycleImageView(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p1, v0}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setupImage(Landroid/graphics/Bitmap;)V
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
