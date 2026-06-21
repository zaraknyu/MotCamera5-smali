.class public abstract Lcom/motorola/camera/ui/widgets/Popup;
.super Lcom/motorola/camera/ui/widgets/RotateLayout;
.source "SourceFile"


# instance fields
.field public final mBottomMargin:F

.field public final mFadeIn:Landroid/view/animation/Animation;

.field public final mFadeOut:Landroid/view/animation/Animation;

.field public mIsAdjustLocation:Z

.field public final mLandscapeWidth:F

.field public final mPortraitWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/Popup;->mIsAdjustLocation:Z

    const p2, 0x7f010035

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/Popup;->mFadeIn:Landroid/view/animation/Animation;

    const p2, 0x7f010036

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/Popup;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704b7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/Popup;->mPortraitWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704b5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/Popup;->mLandscapeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704b2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/Popup;->mBottomMargin:F

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/motorola/camera/ui/widgets/RotateLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/Popup;->setTranslation(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/Popup;->mIsAdjustLocation:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/Popup;->mLandscapeWidth:F

    float-to-int v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/Popup;->mPortraitWidth:F

    float-to-int v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    return-void
.end method

.method public setTranslation(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/Popup;->mIsAdjustLocation:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/16 v4, 0x5a

    iget v5, p0, Lcom/motorola/camera/ui/widgets/Popup;->mBottomMargin:F

    const/high16 v6, 0x40000000    # 2.0f

    if-eq p1, v4, :cond_2

    const/16 v4, 0x10e

    if-eq p1, v4, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_1
    int-to-float p1, v0

    div-float/2addr p1, v6

    int-to-float v0, v3

    div-float/2addr v0, v6

    sub-float/2addr p1, v0

    add-float/2addr p1, v5

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p1, v1

    div-float/2addr p1, v6

    add-float/2addr p1, v5

    int-to-float v0, v2

    div-float/2addr v0, v6

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_2
    int-to-float p1, v3

    div-float/2addr p1, v6

    int-to-float v0, v0

    div-float/2addr v0, v6

    sub-float/2addr p1, v0

    sub-float/2addr p1, v5

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p1, v1

    div-float/2addr p1, v6

    add-float/2addr p1, v5

    int-to-float v0, v2

    div-float/2addr v0, v6

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
