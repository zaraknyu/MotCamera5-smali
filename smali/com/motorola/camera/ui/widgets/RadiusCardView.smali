.class public Lcom/motorola/camera/ui/widgets/RadiusCardView;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"


# instance fields
.field public final mBlRadius:F

.field public final mBrRadius:F

.field public final mTlRadius:F

.field public final mTrRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f040385

    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    sget-object v1, Lcom/motorola/camera/R$styleable;->RadiusCardView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/RadiusCardView;->mTlRadius:F

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/RadiusCardView;->mTrRadius:F

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/RadiusCardView;->mBrRadius:F

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/RadiusCardView;->mBlRadius:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getRectF()Landroid/graphics/RectF;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object p0
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/RadiusCardView;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/motorola/camera/ui/widgets/RadiusCardView;->mTlRadius:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/motorola/camera/ui/widgets/RadiusCardView;->mTrRadius:F

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/motorola/camera/ui/widgets/RadiusCardView;->mBrRadius:F

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/motorola/camera/ui/widgets/RadiusCardView;->mBlRadius:F

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
