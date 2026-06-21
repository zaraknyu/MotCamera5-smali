.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;",
        "Landroidx/appcompat/widget/AppCompatSeekBar;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "orientation",
        "",
        "setTextOrientation",
        "(I)V",
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;",
        "textLocation",
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;",
        "getTextLocation",
        "()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;",
        "setTextLocation",
        "(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;)V",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ORIENTATION:Ljava/lang/Object;


# instance fields
.field public final isDisplayValue:Z

.field public final paint:Landroid/graphics/Paint;

.field public textLocation:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;

.field public final textOffset:F

.field public textOrientation:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xb4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x10e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v4, v3, v5}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->ORIENTATION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x42b40000    # 90.0f

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOrientation:F

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;->LEFT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textLocation:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;

    sget-object v2, Lcom/motorola/camera/R$styleable;->BeautySeekBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->isDisplayValue:Z

    const/4 p2, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 p1, 0x5

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOffset:F

    return-void
.end method


# virtual methods
.method public final getTextLocation()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textLocation:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;

    return-object p0
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->isDisplayValue:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "getBounds(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOrientation:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOrientation:F

    const/high16 v4, 0x42b40000    # 90.0f

    cmpg-float v4, v3, v4

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v5

    sub-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v5

    sub-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOffset:F

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    const/16 v4, 0x9

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    if-ge v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    const/16 v4, 0x63

    if-ge v3, v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOffset:F

    :goto_0
    int-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float/2addr v4, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOffset:F

    const/4 v5, 0x6

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    :goto_2
    move v2, v4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    if-ge v3, v4, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOffset:F

    const/4 v5, 0x3

    :goto_3
    int-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float/2addr v4, v3

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOffset:F

    const/4 v5, 0x5

    goto :goto_3

    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOffset:F

    add-float/2addr v1, v2

    goto :goto_2

    :goto_5
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f1200ae

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setTextLocation(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textLocation:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/TEXT_LOCATION;

    return-void
.end method

.method public final setTextOrientation(I)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->ORIENTATION:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;->textOrientation:F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
