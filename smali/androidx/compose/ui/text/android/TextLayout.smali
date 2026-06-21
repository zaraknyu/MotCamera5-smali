.class public final Landroidx/compose/ui/text/android/TextLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backingLayoutHelper:Lcom/motorola/camera/AppFeatures;

.field public final bottomPadding:I

.field public final didExceedMaxLines:Z

.field public final ellipsize:Landroid/text/TextUtils$TruncateAt;

.field public final includePadding:Z

.field public final isBoringLayout:Z

.field public final lastLineExtra:I

.field public final lastLineFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field public final layout:Landroid/text/Layout;

.field public final leftPadding:F

.field public final lineCount:I

.field public final lineHeightSpans:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

.field public final rect:Landroid/graphics/Rect;

.field public final rightPadding:F

.field public final textPaint:Landroid/text/TextPaint;

.field public final topPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILandroidx/compose/ui/text/android/LayoutIntrinsics;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v9, p7

    move-object/from16 v4, p14

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v5, p3

    iput-object v5, v0, Landroidx/compose/ui/text/android/TextLayout;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v8, p5

    iput-object v8, v0, Landroidx/compose/ui/text/android/TextLayout;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    iput-boolean v9, v0, Landroidx/compose/ui/text/android/TextLayout;->includePadding:Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Landroidx/compose/ui/text/android/TextLayout;->rect:Landroid/graphics/Rect;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v13

    sget-object v7, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->ALIGN_LEFT_FRAMEWORK:Landroid/text/Layout$Alignment;

    const/4 v14, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v14, :cond_3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    const/4 v7, 0x3

    if-eq v3, v7, :cond_1

    const/4 v7, 0x4

    if-eq v3, v7, :cond_0

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->ALIGN_RIGHT_FRAMEWORK:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v3, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->ALIGN_LEFT_FRAMEWORK:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_4
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    instance-of v7, v1, Landroid/text/Spanned;

    const/4 v15, 0x0

    if-eqz v7, :cond_5

    move-object v7, v1

    check-cast v7, Landroid/text/Spanned;

    const/4 v10, -0x1

    const-class v11, Landroidx/compose/ui/text/android/style/SkewXSpan;

    invoke-interface {v7, v10, v6, v11}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    if-ge v7, v6, :cond_5

    move v6, v14

    goto :goto_1

    :cond_5
    move v6, v15

    :goto_1
    const-string v7, "TextLayout:initLayout"

    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v7, v4, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetricsIsInit:Z

    const/4 v10, 0x0

    if-nez v7, :cond_6

    iget v7, v4, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textDirectionHeuristic:I

    invoke-static {v7}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    iget-object v11, v4, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    iget-object v12, v4, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    invoke-static {v11, v12, v7, v14, v10}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v7

    iput-object v7, v4, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_boringMetrics:Landroid/text/BoringLayout$Metrics;

    iput-boolean v14, v4, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetricsIsInit:Z

    :cond_6
    iget-object v8, v4, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_boringMetrics:Landroid/text/BoringLayout$Metrics;

    float-to-double v11, v2

    move-wide/from16 v16, v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v7, v10

    float-to-int v7, v7

    if-eqz v8, :cond_9

    invoke-virtual {v4}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    move-result v4

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_9

    if-nez v6, :cond_9

    iput-boolean v14, v0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    if-ltz v7, :cond_7

    goto :goto_2

    :cond_7
    const-string v2, "negative width"

    invoke-static {v2}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_2
    if-ltz v7, :cond_8

    goto :goto_3

    :cond_8
    const-string v2, "negative ellipsized width"

    invoke-static {v2}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_3
    new-instance v1, Landroid/text/BoringLayout;

    const/4 v12, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move v4, v7

    const/4 v7, 0x0

    move v11, v4

    move-object v2, v5

    move-object v5, v3

    move-object v3, v2

    move-object/from16 v2, p1

    move-object/from16 v10, p5

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v12}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    move/from16 v7, p8

    move-object v5, v13

    goto :goto_4

    :cond_9
    move-object v5, v3

    move v4, v7

    const/16 v18, 0x0

    iput-boolean v15, v0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    move v3, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v9, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v8, p5

    move/from16 v11, p7

    move/from16 v7, p8

    move/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v10, p13

    move-object v6, v5

    move-object v5, v13

    move/from16 v13, p10

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->create(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIZIIII)Landroid/text/StaticLayout;

    move-result-object v2

    move-object v1, v2

    :goto_4
    iput-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int/lit8 v3, v2, -0x1

    if-ge v2, v7, :cond_b

    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    :cond_b
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-gtz v4, :cond_c

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_a

    :cond_c
    const/4 v14, 0x1

    :goto_5
    iput-boolean v14, v0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    sget-wide v6, Landroidx/compose/ui/text/android/TextLayout_androidKt;->ZeroVerticalPadding:J

    const/16 v4, 0x20

    const-wide v8, 0xffffffffL

    if-nez p7, :cond_e

    iget-boolean v10, v0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    if-eqz v10, :cond_d

    move-object v10, v1

    check-cast v10, Landroid/text/BoringLayout;

    invoke-virtual {v10}, Landroid/text/BoringLayout;->isFallbackLineSpacingEnabled()Z

    move-result v10

    goto :goto_6

    :cond_d
    move-object v10, v1

    check-cast v10, Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v10

    :goto_6
    if-eqz v10, :cond_f

    :cond_e
    const/4 v12, 0x0

    const/4 v15, 0x1

    goto :goto_b

    :cond_f
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    invoke-static {v10, v11, v13, v14}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v14

    iget v15, v13, Landroid/graphics/Rect;->top:I

    if-ge v15, v14, :cond_10

    sub-int/2addr v14, v15

    :goto_7
    const/4 v15, 0x1

    goto :goto_8

    :cond_10
    invoke-virtual {v1}, Landroid/text/Layout;->getTopPadding()I

    move-result v14

    goto :goto_7

    :goto_8
    if-ne v2, v15, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    invoke-static {v10, v11, v2, v13}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v13

    :goto_9
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    if-le v10, v2, :cond_12

    sub-int/2addr v10, v2

    goto :goto_a

    :cond_12
    invoke-virtual {v1}, Landroid/text/Layout;->getBottomPadding()I

    move-result v10

    :goto_a
    if-nez v14, :cond_13

    if-nez v10, :cond_13

    goto :goto_b

    :cond_13
    int-to-long v13, v14

    shl-long/2addr v13, v4

    int-to-long v10, v10

    and-long/2addr v10, v8

    or-long/2addr v10, v13

    goto :goto_c

    :goto_b
    move-wide v10, v6

    :goto_c
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spanned;

    if-nez v2, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v13, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/text/Spanned;

    const-class v14, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    invoke-static {v2, v14}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_15

    :goto_d
    move-object/from16 v1, v18

    goto :goto_e

    :cond_15
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/text/Spanned;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v2, v12, v1, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    :goto_e
    iput-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->lineHeightSpans:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    if-eqz v1, :cond_1a

    array-length v2, v1

    move v6, v12

    move v7, v6

    move v13, v7

    :goto_f
    if-ge v6, v2, :cond_18

    aget-object v14, v1, v6

    move/from16 p1, v4

    iget v4, v14, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    if-gez v4, :cond_16

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v7, v4

    :cond_16
    iget v4, v14, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    if-gez v4, :cond_17

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v13, v4

    :cond_17
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, p1

    goto :goto_f

    :cond_18
    move/from16 p1, v4

    if-nez v7, :cond_19

    if-nez v13, :cond_19

    sget-wide v1, Landroidx/compose/ui/text/android/TextLayout_androidKt;->ZeroVerticalPadding:J

    :goto_10
    move-wide v6, v1

    goto :goto_11

    :cond_19
    int-to-long v1, v7

    shl-long v1, v1, p1

    int-to-long v6, v13

    and-long/2addr v6, v8

    or-long/2addr v1, v6

    goto :goto_10

    :cond_1a
    move/from16 p1, v4

    :goto_11
    shr-long v1, v10, p1

    long-to-int v1, v1

    shr-long v13, v6, p1

    long-to-int v2, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    and-long v1, v10, v8

    long-to-int v1, v1

    and-long/2addr v6, v8

    long-to-int v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    iget-object v8, v0, Landroidx/compose/ui/text/android/TextLayout;->textPaint:Landroid/text/TextPaint;

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->lineHeightSpans:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v2, v0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    sub-int/2addr v2, v15

    iget-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    if-ne v6, v4, :cond_1d

    if-eqz v1, :cond_1d

    array-length v4, v1

    if-nez v4, :cond_1b

    goto/16 :goto_13

    :cond_1b
    new-instance v7, Landroid/text/SpannableString;

    const-string/jumbo v4, "\u200b"

    invoke-direct {v7, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-eqz v2, :cond_1c

    iget-boolean v2, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    if-eqz v2, :cond_1c

    move v15, v12

    goto :goto_12

    :cond_1c
    iget-boolean v15, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    :goto_12
    new-instance v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v6, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    iget-boolean v9, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    iget v10, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    iget-boolean v1, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->preserveMinimumHeight:Z

    move/from16 p7, v1

    move-object/from16 p1, v2

    move/from16 p3, v4

    move/from16 p2, v6

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p4, v15

    invoke-direct/range {p1 .. p7}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIZZFZ)V

    move-object/from16 v1, p1

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-virtual {v7, v1, v12, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v10

    iget-boolean v1, v0, Landroidx/compose/ui/text/android/TextLayout;->includePadding:Z

    move/from16 v22, v12

    sget-object v12, Landroidx/compose/ui/text/android/LayoutCompat;->DEFAULT_LAYOUT_ALIGNMENT:Landroid/text/Layout$Alignment;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v9, 0x7fffffff

    const v13, 0x7fffffff

    const/4 v14, 0x0

    const v15, 0x7fffffff

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v1

    move-object v11, v5

    move/from16 v1, v22

    invoke-static/range {v7 .. v21}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->create(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIZIIII)Landroid/text/StaticLayout;

    move-result-object v2

    new-instance v10, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v10}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v4

    iput v4, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v4

    iput v4, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    iput v4, v10, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iput v2, v10, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_14

    :cond_1d
    :goto_13
    move v1, v12

    move-object/from16 v10, v18

    :goto_14
    if-eqz v10, :cond_1e

    iget v1, v10, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v2

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v15, v1, v2

    goto :goto_15

    :cond_1e
    move v15, v1

    :goto_15
    iput v15, v0, Landroidx/compose/ui/text/android/TextLayout;->lastLineExtra:I

    iput-object v10, v0, Landroidx/compose/ui/text/android/TextLayout;->lastLineFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->getEllipsizedLeftPadding(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->leftPadding:F

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->getEllipsizedRightPadding(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->rightPadding:F

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method


# virtual methods
.method public final getHeight()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    add-int/2addr v0, v1

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->lastLineExtra:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getHorizontalPadding(I)F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->leftPadding:F

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->rightPadding:F

    add-float/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getLayoutHelper()Lcom/motorola/camera/AppFeatures;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->backingLayoutHelper:Lcom/motorola/camera/AppFeatures;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/AppFeatures;

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-direct {v0, v1}, Lcom/motorola/camera/AppFeatures;-><init>(Landroid/text/Layout;)V

    iput-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->backingLayoutHelper:Lcom/motorola/camera/AppFeatures;

    :cond_0
    return-object v0
.end method

.method public final getLineBaseline(I)F
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    int-to-float v0, v0

    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lastLineFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result p0

    iget p1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p1, p1

    sub-float/2addr p0, p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p0

    int-to-float p0, p0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public final getLineBottom(I)F
    .locals 3

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lastLineFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p0

    int-to-float p0, p0

    iget p1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float p1, p1

    add-float/2addr p0, p1

    return p0

    :cond_0
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    int-to-float v1, v1

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    add-float/2addr v1, p0

    return v1
.end method

.method public final getLineEnd(I)I
    .locals 2

    sget-object v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    return p0
.end method

.method public final getLineTop(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public final getPrimaryHorizontal(IZ)F
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayoutHelper()Lcom/motorola/camera/AppFeatures;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/motorola/camera/AppFeatures;->getHorizontalPosition(IZZ)F

    move-result p2

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getHorizontalPadding(I)F

    move-result p0

    add-float/2addr p0, p2

    return p0
.end method

.method public final getSecondaryHorizontal(IZ)F
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayoutHelper()Lcom/motorola/camera/AppFeatures;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/motorola/camera/AppFeatures;->getHorizontalPosition(IZZ)F

    move-result p2

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getHorizontalPadding(I)F

    move-result p0

    add-float/2addr p0, p2

    return p0
.end method
