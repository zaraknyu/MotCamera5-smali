.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final COLOR_BACKGROUND_ATTR:[I

.field public static final IMPL:Lcom/google/android/gms/dynamite/zzf;


# instance fields
.field public final mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

.field public mCompatPadding:Z

.field public final mContentPadding:Landroid/graphics/Rect;

.field public mPreventCornerOverlap:Z

.field public final mShadowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010031

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Lcom/google/android/gms/dynamite/zzf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400b8

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v1, p0}, Lcom/motorola/camera/CameraKpi;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    .line 6
    sget-object v2, Landroidx/cardview/R$styleable;->CardView:[I

    const v3, 0x7f13015f

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v4, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {p3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 10
    invoke-virtual {p3, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 11
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    new-array p3, v2, [F

    .line 13
    invoke-static {v4, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 14
    aget p2, p3, p2

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060054

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060053

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 17
    :goto_0
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_1
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/4 v4, 0x4

    .line 19
    invoke-virtual {p1, v4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x5

    .line 20
    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    const/4 v5, 0x7

    .line 21
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    const/4 v5, 0x6

    const/4 v6, 0x1

    .line 22
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    const/16 v5, 0x8

    .line 23
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v7, 0xa

    .line 24
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroid/graphics/Rect;->left:I

    const/16 v7, 0xc

    .line 25
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroid/graphics/Rect;->top:I

    const/16 v7, 0xb

    .line 26
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroid/graphics/Rect;->right:I

    const/16 v7, 0x9

    .line 27
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    cmpl-float v0, v4, p3

    if-lez v0, :cond_2

    move p3, v4

    .line 28
    :cond_2
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 29
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    new-instance p1, Landroidx/cardview/widget/RoundRectDrawable;

    invoke-direct {p1, p2, v2}, Landroidx/cardview/widget/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 32
    iput-object p1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-virtual {p0, v6}, Landroid/view/View;->setClipToOutline(Z)V

    .line 35
    invoke-virtual {p0, v4}, Landroid/view/View;->setElevation(F)V

    .line 36
    sget-object p0, Landroidx/cardview/widget/CardView;->IMPL:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {p0, v1, p3}, Lcom/google/android/gms/dynamite/zzf;->setMaxElevation(Lcom/motorola/camera/CameraKpi;F)V

    return-void
.end method

.method public static synthetic access$001(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getCardElevation()F
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public getContentPaddingBottom()I
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getContentPaddingLeft()I
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getContentPaddingRight()I
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getContentPaddingTop()I
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getMaxCardElevation()F
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    return p0
.end method

.method public getPreventCornerOverlap()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    return p0
.end method

.method public getRadius()F
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    return p0
.end method

.method public getUseCompatPadding()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    return p0
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 2
    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 3
    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 6
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 8
    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 10
    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 13
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 1

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Lcom/google/android/gms/dynamite/zzf;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/dynamite/zzf;->setMaxElevation(Lcom/motorola/camera/CameraKpi;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    iget-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroidx/cardview/widget/RoundRectDrawable;

    iget p1, p1, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/dynamite/zzf;->setMaxElevation(Lcom/motorola/camera/CameraKpi;F)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Lcom/motorola/camera/CameraKpi;

    iget-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroidx/cardview/widget/RoundRectDrawable;

    iget p1, p1, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/dynamite/zzf;->setMaxElevation(Lcom/motorola/camera/CameraKpi;F)V

    :cond_0
    return-void
.end method
