.class public final Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field public ascent:I

.field public descent:I

.field public final endIndex:I

.field public firstAscent:I

.field public firstAscentDiff:I

.field public lastDescent:I

.field public lastDescentDiff:I

.field public final lineHeight:F

.field public final preserveMinimumHeight:Z

.field public final topRatio:F

.field public final trimFirstLineTop:Z

.field public final trimLastLineBottom:Z


# direct methods
.method public constructor <init>(FIZZFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->endIndex:I

    iput-boolean p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    iput-boolean p4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    iput p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    iput-boolean p6, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->preserveMinimumHeight:Z

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    const/4 p0, 0x0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p5, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    cmpg-float p0, p5, p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo p0, "topRatio should be in [0..1] range or -1"

    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 4

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int p5, p1, p4

    if-gtz p5, :cond_0

    goto :goto_2

    :cond_0
    const/4 p5, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move p2, p5

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iget v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->endIndex:I

    if-ne p3, v1, :cond_2

    goto :goto_1

    :cond_2
    move p5, v0

    :goto_1
    iget-boolean p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    iget-boolean v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    if-eqz p2, :cond_3

    if-eqz p5, :cond_3

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    :goto_2
    return-void

    :cond_3
    iget v2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_9

    sub-int/2addr p1, p4

    iget p4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float p4, v2

    float-to-int p4, p4

    sub-int p1, p4, p1

    iget-boolean v2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->preserveMinimumHeight:Z

    if-eqz v2, :cond_4

    if-gtz p1, :cond_4

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    goto :goto_5

    :cond_4
    const/high16 v0, -0x40800000    # -1.0f

    iget v2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    cmpg-float v0, v2, v0

    if-nez v0, :cond_5

    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v0, v2

    :cond_5
    if-gtz p1, :cond_6

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_3
    double-to-float p1, v2

    float-to-int p1, p1

    goto :goto_4

    :cond_6
    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_3

    :goto_4
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    sub-int p4, p1, p4

    iput p4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    if-eqz v1, :cond_7

    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_7
    iput p4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    if-eqz p3, :cond_8

    move p1, v0

    :cond_8
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p3, p4

    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    :cond_9
    :goto_5
    if-eqz p2, :cond_a

    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    goto :goto_6

    :cond_a
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    :goto_6
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-eqz p5, :cond_b

    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    goto :goto_7

    :cond_b
    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    :goto_7
    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return-void
.end method
