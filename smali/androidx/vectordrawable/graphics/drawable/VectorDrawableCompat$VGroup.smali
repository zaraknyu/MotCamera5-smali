.class public final Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
.source "SourceFile"


# instance fields
.field public final mChildren:Ljava/util/ArrayList;

.field public mGroupName:Ljava/lang/String;

.field public final mLocalMatrix:Landroid/graphics/Matrix;

.field public mPivotX:F

.field public mPivotY:F

.field public mRotate:F

.field public mScaleX:F

.field public mScaleY:F

.field public final mStackedMatrix:Landroid/graphics/Matrix;

.field public mTranslateX:F

.field public mTranslateY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 5
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 6
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 8
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 9
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 10
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/collection/ArrayMap;)V
    .locals 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 17
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 18
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 20
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 21
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 22
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 23
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    .line 24
    iput-object v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 25
    iget v3, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    iput v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 26
    iget v3, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    iput v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 27
    iget v3, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    iput v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 28
    iget v3, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iput v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 29
    iget v3, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    iput v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 30
    iget v3, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iput v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 31
    iget v3, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iput v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 32
    iget-object v3, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {p2, v3, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    iget-object v3, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 35
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 36
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 37
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 38
    instance-of v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v4, :cond_1

    .line 39
    check-cast v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 40
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    new-instance v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v5, v3, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/collection/ArrayMap;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 41
    :cond_1
    instance-of v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    if-eqz v4, :cond_2

    .line 42
    new-instance v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    check-cast v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    .line 43
    invoke-direct {v4, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 44
    iput v0, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 45
    iput v1, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 46
    iput v1, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 47
    iput v0, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 48
    iput v1, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 49
    iput v0, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 50
    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 51
    sget-object v5, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    const/high16 v5, 0x40800000    # 4.0f

    .line 52
    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 53
    iget-object v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Lcom/google/common/base/Splitter;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Lcom/google/common/base/Splitter;

    .line 54
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 55
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 56
    iget-object v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Lcom/google/common/base/Splitter;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Lcom/google/common/base/Splitter;

    .line 57
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mFillRule:I

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mFillRule:I

    .line 58
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 59
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 60
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 61
    iget v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    iput v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 62
    iget-object v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 63
    iget-object v5, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 64
    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    iput v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    goto :goto_1

    .line 65
    :cond_2
    instance-of v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    if-eqz v4, :cond_4

    .line 66
    new-instance v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    check-cast v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    .line 67
    invoke-direct {v4, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 68
    :goto_1
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v3, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 70
    invoke-virtual {p2, v3, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 71
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown object in the tree!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getPivotX()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    return p0
.end method

.method public getPivotY()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    return p0
.end method

.method public getRotation()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    return p0
.end method

.method public getScaleX()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    return p0
.end method

.method public getScaleY()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    return p0
.end method

.method public getTranslateX()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    return p0
.end method

.method public getTranslateY()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    return p0
.end method

.method public final isStateful()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final onStateChanged([I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;

    invoke-virtual {v2, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;->onStateChanged([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public setPivotX(F)V
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    :cond_0
    return-void
.end method

.method public final updateLocalMatrix()V
    .locals 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    neg-float v1, v1

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    add-float/2addr v1, v2

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    add-float/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method
