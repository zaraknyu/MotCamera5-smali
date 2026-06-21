.class public final Lcom/google/android/material/carousel/CarouselLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->$r8$classId:I

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x2

    invoke-static {p4, p3, p0, p3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIII)I

    move-result p3

    sub-int/2addr p2, p1

    div-int/2addr p2, p0

    add-int/2addr p2, p1

    sub-int/2addr p3, p2

    return p3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :pswitch_0
    const-string p0, "displayMetrics"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x43480000    # 200.0f

    :goto_0
    div-float/2addr p1, p0

    return p1

    :pswitch_1
    if-eqz p1, :cond_0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    :goto_1
    int-to-float p0, p0

    const/high16 p1, 0x43160000    # 150.0f

    goto :goto_0

    :pswitch_2
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
