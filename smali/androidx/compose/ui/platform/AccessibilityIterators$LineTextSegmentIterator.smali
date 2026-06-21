.class public final Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;
.super Lcom/motorola/camera/CameraInUseBroadcaster;
.source "SourceFile"


# static fields
.field public static final DirectionEnd:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field public static final DirectionStart:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field public static lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;


# instance fields
.field public layoutResult:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    sput-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->DirectionStart:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    sput-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->DirectionEnd:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-void
.end method


# virtual methods
.method public final following(I)[I
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/CameraInUseBroadcaster;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/CameraInUseBroadcaster;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->DirectionStart:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    const-string v2, "layoutResult"

    if-gez p1, :cond_3

    iget-object p1, p0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v3, p0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v3, :cond_7

    invoke-virtual {v3, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {p0, v3, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result v4

    if-ne v4, p1, :cond_4

    move p1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 p1, v3, 0x1

    :goto_0
    iget-object v3, p0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v3, :cond_6

    iget-object v2, v3, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget v2, v2, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    if-lt p1, v2, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->DirectionEnd:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    invoke-virtual {p0, p1, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/CameraInUseBroadcaster;->getRange(II)[I

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getLineEdgeIndex(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    const-string v2, "layoutResult"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v0

    iget-object v3, p0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    if-eq p2, v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->requireLineIndexInRange(I)V

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->findParagraphByLineIndex(Ljava/util/List;I)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object p2, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    iget v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    sub-int/2addr p1, v0

    iget-object p2, p2, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    move-result p1

    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final preceding(I)[I
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/CameraInUseBroadcaster;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraInUseBroadcaster;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v2, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->DirectionEnd:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    const-string v3, "layoutResult"

    if-le p1, v0, :cond_3

    iget-object p1, p0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraInUseBroadcaster;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p1, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    add-int/lit8 p1, v0, -0x1

    :goto_0
    if-gez p1, :cond_5

    return-object v1

    :cond_5
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->DirectionStart:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result v0

    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/CameraInUseBroadcaster;->getRange(II)[I

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
