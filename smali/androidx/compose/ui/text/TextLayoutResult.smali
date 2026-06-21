.class public final Landroidx/compose/ui/text/TextLayoutResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final firstBaseline:F

.field public final lastBaseline:F

.field public final layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

.field public final multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

.field public final placeholderRects:Ljava/util/ArrayList;

.field public final size:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iput-object p2, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iput-wide p3, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    iget-object p1, p2, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v0, v0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p3}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result p3

    :goto_0
    iput p3, p0, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object p3, p1, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    iget-object p3, p3, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget p4, p3, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result p3

    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    add-float p4, p3, p1

    :goto_1
    iput p4, p0, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    iget-object p1, p2, Landroidx/compose/ui/text/MultiParagraph;->placeholderRects:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v0, p1, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget-object v1, p1, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    iget-wide v2, p1, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    iget v1, p1, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    iget v1, p1, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;
    .locals 12

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    const/16 v1, 0x29

    const-string v2, "offset("

    if-ltz p1, :cond_0

    iget-object v3, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ") is out of bounds [0, "

    invoke-static {v2, p1, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->findParagraphByIndex(Ljava/util/List;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    move-result p1

    iget-object v3, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    if-ltz p1, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p1, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, ") is out of bounds [0,"

    invoke-static {v2, p1, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_1
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v3

    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v4

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v6

    :goto_2
    invoke-virtual {v1, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {v0, p1, v6}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    move-result v1

    add-int/2addr p1, v5

    invoke-virtual {v0, p1, v5}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    move-result p1

    goto :goto_4

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1, v6}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(IZ)F

    move-result v1

    add-int/2addr p1, v5

    invoke-virtual {v0, p1, v5}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(IZ)F

    move-result p1

    :goto_3
    move v11, v1

    move v1, p1

    move p1, v11

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v0, p1, v6}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    move-result v1

    add-int/2addr p1, v5

    invoke-virtual {v0, p1, v5}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    move-result p1

    goto :goto_3

    :cond_5
    invoke-virtual {v0, p1, v6}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(IZ)F

    move-result v1

    add-int/2addr p1, v5

    invoke-virtual {v0, p1, v5}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(IZ)F

    move-result p1

    :goto_4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v3, p1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v5, p0

    const/16 p0, 0x20

    shl-long/2addr v3, p0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    new-instance v5, Landroidx/compose/ui/geometry/Rect;

    shr-long v9, v3, p0

    long-to-int p0, v9

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float/2addr v6, p1

    and-long/2addr v3, v7

    long-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    add-float/2addr p0, v2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    add-float/2addr p1, v0

    invoke-direct {v5, v6, v3, p0, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v5
.end method

.method public final getLineForOffset(I)I
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p1, p0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Lkotlin/text/RegexKt;->findParagraphByIndex(Ljava/util/List;I)I

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    move-result p1

    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    add-int/2addr p1, p0

    return p1
.end method

.method public final getLineForVerticalPosition(F)I
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->findParagraphByY(Ljava/util/ArrayList;F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    sub-float/2addr p1, p0

    iget-object p0, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final getLineStart(I)I
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->requireLineIndexInRange(I)V

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->findParagraphByLineIndex(Ljava/util/List;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    sub-int/2addr p1, v1

    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    add-int/2addr p1, p0

    return p1
.end method

.method public final getLineTop(I)F
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->requireLineIndexInRange(I)V

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->findParagraphByLineIndex(Ljava/util/List;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    sub-int/2addr p1, v1

    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result p1

    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    add-float/2addr p1, p0

    return p1
.end method

.method public final getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 4

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget-object v3, v1, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    const-string v2, "offset("

    const-string v3, ") is out of bounds [0, "

    invoke-static {v2, p1, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p1, p0, :cond_2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Lkotlin/text/RegexKt;->findParagraphByIndex(Ljava/util/List;I)I

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    move-result p0

    iget-object p1, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v0, p1, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p0

    iget-object p1, p1, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {p1, p0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-object p0
.end method

.method public final getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;
    .locals 9

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ") or End("

    const-string v2, ") is out of range [0.."

    const-string v3, "Start("

    invoke-static {p1, p2, v3, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), or start > end!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    if-ne p1, p2, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lkotlin/text/UStringsKt;->TextRange(II)J

    move-result-wide v1

    new-instance v3, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;

    invoke-direct {v3, v0, p1, p2}, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;-><init>(Landroidx/compose/ui/graphics/AndroidPath;II)V

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->findParagraphByIndex(Ljava/util/List;I)I

    move-result p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge p1, p2, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/ParagraphInfo;

    iget v5, v4, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    const/16 v6, 0x20

    shr-long v6, v1, v6

    long-to-int v6, v6

    const-wide v7, 0xffffffffL

    and-long/2addr v7, v1

    long-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v5, v6, :cond_3

    iget v5, v4, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    iget v6, v4, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    if-eq v5, v6, :cond_2

    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    invoke-static {v3, v4, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextLayoutResult(layoutInput="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", multiParagraph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstBaseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lastBaseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", placeholderRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
