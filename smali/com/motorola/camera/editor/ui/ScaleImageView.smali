.class public Lcom/motorola/camera/editor/ui/ScaleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCurrentRotate:F

.field public mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mIsAfterReview:Z

.field public mIsRotateAnimation:Z

.field public final mLastMovePoint:Landroid/graphics/PointF;

.field public mLastRotate:F

.field public final mOuterMatrix:Landroid/graphics/Matrix;

.field public mPinchMode:I

.field public mRotateDirection:I

.field public mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

.field public mScaleBase:F

.field public final mScaleCenter:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleCenter:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    iput v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleBase:F

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    iput-boolean v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    iput-boolean v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/editor/ui/ScaleImageView$1;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally(I)Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    iget p1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    goto :goto_0

    :cond_2
    iget p0, v0, Landroid/graphics/RectF;->left:F

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final canScrollVertically(I)Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    goto :goto_0

    :cond_2
    iget p0, v0, Landroid/graphics/RectF;->top:F

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final cancelAllAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    :cond_1
    return-void
.end method

.method public final getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 12

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {v5, v6}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    int-to-float v0, v0

    int-to-float v5, v5

    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    invoke-virtual {v6, v4, v4, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v6, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    :goto_1
    sub-float v0, v7, v0

    iget v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v8, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v8

    const/high16 v8, 0x43870000    # 270.0f

    if-gez v1, :cond_3

    iget v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iget v9, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    add-float/2addr v1, v9

    iput v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iput v4, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_2

    iput v4, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    :cond_2
    iget-boolean v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    :cond_3
    iget v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iget v9, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    add-float/2addr v1, v9

    cmpg-float v9, v1, v5

    if-gtz v9, :cond_4

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    sub-float/2addr v7, v0

    goto :goto_3

    :cond_4
    const/high16 v9, 0x43340000    # 180.0f

    cmpl-float v10, v1, v9

    if-lez v10, :cond_5

    cmpg-float v10, v1, v8

    if-gtz v10, :cond_5

    sub-float v8, v1, v9

    mul-float/2addr v8, v0

    div-float/2addr v8, v5

    sub-float/2addr v7, v8

    goto :goto_3

    :cond_5
    cmpl-float v10, v1, v5

    if-lez v10, :cond_6

    cmpg-float v9, v1, v9

    if-gtz v9, :cond_6

    sub-float/2addr v7, v0

    sub-float v8, v1, v5

    :goto_2
    mul-float/2addr v8, v0

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    goto :goto_3

    :cond_6
    sub-float/2addr v7, v0

    sub-float v8, v1, v8

    goto :goto_2

    :goto_3
    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0, v4, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    invoke-virtual {p1, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    invoke-virtual {v9, v4, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v9, Landroid/graphics/RectF;->right:F

    iget v7, v9, Landroid/graphics/RectF;->left:F

    sub-float v8, v0, v7

    cmpg-float v10, v8, v1

    const/high16 v11, 0x40000000    # 2.0f

    if-gez v10, :cond_7

    :goto_4
    div-float/2addr v1, v11

    add-float/2addr v0, v7

    div-float/2addr v0, v11

    :goto_5
    sub-float/2addr v1, v0

    goto :goto_6

    :cond_7
    cmpl-float v8, v8, v1

    if-lez v8, :cond_8

    goto :goto_4

    :cond_8
    cmpl-float v8, v7, v4

    if-lez v8, :cond_9

    neg-float v1, v7

    goto :goto_6

    :cond_9
    cmpg-float v7, v0, v1

    if-gez v7, :cond_a

    goto :goto_5

    :cond_a
    move v1, v4

    :goto_6
    iget v0, v9, Landroid/graphics/RectF;->bottom:F

    iget v7, v9, Landroid/graphics/RectF;->top:F

    sub-float v8, v0, v7

    cmpg-float v8, v8, v5

    if-gez v8, :cond_b

    div-float/2addr v5, v11

    add-float/2addr v0, v7

    div-float/2addr v0, v11

    :goto_7
    sub-float v4, v5, v0

    goto :goto_8

    :cond_b
    cmpl-float v8, v7, v4

    if-lez v8, :cond_c

    neg-float v4, v7

    goto :goto_8

    :cond_c
    cmpg-float v7, v0, v5

    if-gez v7, :cond_d

    goto :goto_7

    :cond_d
    :goto_8
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, v2, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v4, 0x10

    if-ge v1, v4, :cond_e

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, v2, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v1, v4, :cond_f

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_f
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object p1
.end method

.method public final getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    :cond_1
    return-object p1
.end method

.method public getMaxScale()F
    .locals 0

    const/high16 p0, 0x40800000    # 4.0f

    return p0
.end method

.method public final isReady()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v4, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v8, :cond_a

    const/4 v9, 0x3

    if-ne v2, v9, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v9, 0x6

    if-ne v2, v9, :cond_3

    iget v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-ne v2, v6, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v6, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_2

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/motorola/camera/editor/ui/ScaleImageView;->saveScaleContext(FFFF)V

    :cond_1
    :goto_0
    move/from16 v18, v8

    goto/16 :goto_a

    :cond_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    if-ne v2, v8, :cond_1

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/motorola/camera/editor/ui/ScaleImageView;->saveScaleContext(FFFF)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    iput v8, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v5, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_5
    const/4 v9, 0x5

    if-ne v2, v9, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    iput v6, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/motorola/camera/editor/ui/ScaleImageView;->saveScaleContext(FFFF)V

    goto :goto_0

    :cond_6
    if-ne v2, v6, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_7
    iget v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-ne v2, v8, :cond_8

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/editor/ui/ScaleImageView;->scrollBy(FF)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v5, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_8
    if-ne v2, v6, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v8, :cond_1

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sget-object v12, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    sub-float/2addr v2, v10

    sub-float/2addr v9, v11

    mul-float/2addr v2, v2

    mul-float/2addr v9, v9

    add-float/2addr v9, v2

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v9, v11

    div-float/2addr v9, v3

    add-float/2addr v10, v12

    div-float/2addr v10, v3

    new-array v3, v6, [F

    aput v9, v3, v7

    aput v10, v3, v8

    aget v6, v3, v7

    aget v3, v3, v8

    invoke-virtual {v5, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    iget v3, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleBase:F

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_0

    :cond_9
    mul-float/2addr v3, v2

    sget-object v2, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v3, v7, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget v3, v5, Landroid/graphics/PointF;->x:F

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v7

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-static {v2}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_a
    :goto_1
    iget v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-ne v2, v6, :cond_1a

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v2

    if-nez v2, :cond_b

    move/from16 v18, v8

    goto/16 :goto_8

    :cond_b
    sget-object v2, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    invoke-static {v6}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v9

    aget v9, v9, v7

    invoke-static {v4}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v10

    aget v10, v10, v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getMaxScale()F

    move-result v13

    cmpl-float v14, v9, v13

    const/high16 v15, 0x3f800000    # 1.0f

    if-lez v14, :cond_c

    div-float/2addr v13, v9

    goto :goto_2

    :cond_c
    move v13, v15

    :goto_2
    mul-float v9, v10, v13

    cmpg-float v9, v9, v15

    if-gez v9, :cond_d

    div-float v13, v15, v10

    :cond_d
    cmpl-float v9, v13, v15

    if-eqz v9, :cond_e

    move v9, v8

    goto :goto_3

    :cond_e
    move v9, v7

    :goto_3
    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v14, v5, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v13, v13, v14, v15}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    move/from16 v16, v3

    sget-object v3, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v3}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v8

    move-object/from16 v8, v17

    check-cast v8, Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v7, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v10, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v14, v8, Landroid/graphics/RectF;->right:F

    iget v15, v8, Landroid/graphics/RectF;->left:F

    sub-float v19, v14, v15

    cmpg-float v19, v19, v11

    if-gez v19, :cond_f

    div-float v11, v11, v16

    add-float/2addr v14, v15

    div-float v14, v14, v16

    :goto_4
    sub-float/2addr v11, v14

    goto :goto_5

    :cond_f
    cmpl-float v19, v15, v7

    if-lez v19, :cond_10

    neg-float v11, v15

    goto :goto_5

    :cond_10
    cmpg-float v15, v14, v11

    if-gez v15, :cond_11

    goto :goto_4

    :cond_11
    move v11, v7

    :goto_5
    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    iget v15, v8, Landroid/graphics/RectF;->top:F

    sub-float v19, v14, v15

    cmpg-float v19, v19, v12

    if-gez v19, :cond_12

    div-float v12, v12, v16

    add-float/2addr v14, v15

    div-float v14, v14, v16

    :goto_6
    sub-float/2addr v12, v14

    goto :goto_7

    :cond_12
    cmpl-float v16, v15, v7

    if-lez v16, :cond_13

    neg-float v12, v15

    goto :goto_7

    :cond_13
    cmpg-float v15, v14, v12

    if-gez v15, :cond_14

    goto :goto_6

    :cond_14
    move v12, v7

    :goto_7
    cmpl-float v14, v11, v7

    if-nez v14, :cond_15

    cmpl-float v7, v12, v7

    if-eqz v7, :cond_16

    :cond_15
    move/from16 v9, v18

    :cond_16
    if-eqz v9, :cond_18

    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-eqz v4, :cond_17

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_17
    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v13, v13, v7, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    new-instance v5, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    invoke-direct {v5, v0, v4, v2}, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    iput-object v5, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    invoke-static {v2}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    :cond_18
    iget-object v2, v3, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_19

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_19
    invoke-static {v10}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    invoke-static {v6}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    :goto_8
    const/4 v2, 0x0

    goto :goto_9

    :cond_1a
    move/from16 v18, v8

    move v2, v7

    :goto_9
    iput v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    :goto_a
    iget-object v0, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v18
.end method

.method public final saveScaleContext(FFFF)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float v3, p1, p3

    sub-float v4, p2, p4

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleBase:F

    add-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    add-float/2addr p2, p4

    div-float/2addr p2, p3

    const/4 p3, 0x2

    new-array p4, p3, [F

    aput p1, p4, v2

    const/4 p1, 0x1

    aput p2, p4, p1

    if-eqz v0, :cond_0

    new-array p2, p3, [F

    sget-object p3, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {p3}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3, p2, p4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    invoke-static {p3}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    new-array p2, p3, [F

    :goto_0
    aget p3, p2, v2

    aget p1, p2, p1

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, p3, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final scrollBy(FF)Z
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0}, Landroidx/media3/common/BasePlayer;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float v6, v4, v5

    cmpg-float v6, v6, v2

    const/4 v7, 0x0

    if-gez v6, :cond_2

    :cond_1
    move p1, v7

    goto :goto_0

    :cond_2
    add-float v6, v5, p1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    cmpg-float p1, v5, v7

    if-gez p1, :cond_1

    neg-float p1, v5

    goto :goto_0

    :cond_3
    add-float v5, v4, p1

    cmpg-float v5, v5, v2

    if-gez v5, :cond_4

    cmpl-float p1, v4, v2

    if-lez p1, :cond_1

    sub-float p1, v2, v4

    :cond_4
    :goto_0
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v2, v4

    cmpg-float v5, v5, v3

    if-gez v5, :cond_6

    :cond_5
    move p2, v7

    goto :goto_1

    :cond_6
    add-float v5, v4, p2

    cmpl-float v5, v5, v7

    if-lez v5, :cond_7

    cmpg-float p2, v4, v7

    if-gez p2, :cond_5

    neg-float p2, v4

    goto :goto_1

    :cond_7
    add-float v4, v2, p2

    cmpg-float v4, v4, v3

    if-gez v4, :cond_8

    cmpl-float p2, v2, v3

    if-lez p2, :cond_5

    sub-float p2, v3, v2

    :cond_8
    :goto_1
    iget-object v0, v0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    cmpl-float p0, p1, v7

    if-nez p0, :cond_b

    cmpl-float p0, p2, v7

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public setLastRotate(I)V
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x42b40000    # 90.0f

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x43340000    # 180.0f

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_2

    const/high16 p1, 0x43870000    # 270.0f

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_0

    :cond_3
    int-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iput v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    return-void
.end method
