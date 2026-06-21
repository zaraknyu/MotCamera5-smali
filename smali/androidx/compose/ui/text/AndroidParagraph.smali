.class public final Landroidx/compose/ui/text/AndroidParagraph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final charSequence:Ljava/lang/CharSequence;

.field public final constraints:J

.field public final layout:Landroidx/compose/ui/text/android/TextLayout;

.field public final maxLines:I

.field public final paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

.field public final placeholderRects:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJ)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v2, p3

    iget-object v3, v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iput v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->constraints:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-static {v6}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    const/4 v6, 0x1

    if-lt v9, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "maxLines should be greater than 0"

    invoke-static {v7}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_1
    iget-object v7, v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    const/4 v8, 0x5

    const/16 v16, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne v2, v11, :cond_8

    iget-object v13, v3, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-wide v13, v13, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v11

    invoke-static {v13, v14, v11, v12}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v3, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-wide v11, v11, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    sget-wide v13, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v3, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v11, v11, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_2

    goto :goto_3

    :cond_2
    if-ne v11, v8, :cond_3

    goto :goto_3

    :cond_3
    if-ne v11, v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_5

    goto :goto_3

    :cond_5
    instance-of v11, v7, Landroid/text/Spannable;

    if-eqz v11, :cond_6

    move-object v11, v7

    check-cast v11, Landroid/text/Spannable;

    goto :goto_2

    :cond_6
    move-object/from16 v11, v16

    :goto_2
    if-nez v11, :cond_7

    new-instance v11, Landroid/text/SpannableString;

    invoke-direct {v11, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_7
    move-object v7, v11

    const-class v11, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    invoke-static {v7, v11}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_9

    new-instance v11, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v13

    sub-int/2addr v13, v6

    const/16 v14, 0x21

    invoke-interface {v7, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_8
    const/16 v17, 0x0

    :cond_9
    :goto_3
    iput-object v7, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    iget-object v11, v3, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v12, v3, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget v13, v11, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    const/4 v14, 0x3

    if-ne v13, v6, :cond_a

    move/from16 v23, v14

    goto :goto_5

    :cond_a
    const/4 v15, 0x2

    if-ne v13, v15, :cond_b

    move/from16 v23, v10

    goto :goto_5

    :cond_b
    if-ne v13, v14, :cond_c

    const/16 v23, 0x2

    goto :goto_5

    :cond_c
    if-ne v13, v8, :cond_d

    goto :goto_4

    :cond_d
    const/4 v15, 0x6

    if-ne v13, v15, :cond_e

    move/from16 v23, v6

    goto :goto_5

    :cond_e
    :goto_4
    move/from16 v23, v17

    :goto_5
    if-ne v13, v10, :cond_f

    move/from16 v32, v6

    goto :goto_6

    :cond_f
    move/from16 v32, v17

    :goto_6
    iget v13, v11, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_10

    move v13, v10

    goto :goto_7

    :cond_10
    move/from16 v13, v17

    :goto_7
    iget v11, v11, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    and-int/lit16 v8, v11, 0xff

    if-ne v8, v6, :cond_11

    goto :goto_8

    :cond_11
    if-ne v8, v15, :cond_12

    move/from16 v28, v6

    goto :goto_9

    :cond_12
    if-ne v8, v14, :cond_13

    const/16 v28, 0x2

    goto :goto_9

    :cond_13
    :goto_8
    move/from16 v28, v17

    :goto_9
    shr-int/lit8 v8, v11, 0x8

    and-int/lit16 v8, v8, 0xff

    if-ne v8, v6, :cond_14

    goto :goto_a

    :cond_14
    const/4 v15, 0x2

    if-ne v8, v15, :cond_15

    move/from16 v29, v6

    goto :goto_b

    :cond_15
    if-ne v8, v14, :cond_16

    const/16 v29, 0x2

    goto :goto_b

    :cond_16
    if-ne v8, v10, :cond_17

    move/from16 v29, v14

    goto :goto_b

    :cond_17
    :goto_a
    move/from16 v29, v17

    :goto_b
    shr-int/lit8 v8, v11, 0x10

    and-int/lit16 v8, v8, 0xff

    if-ne v8, v6, :cond_18

    const/4 v15, 0x2

    goto :goto_c

    :cond_18
    const/4 v15, 0x2

    if-ne v8, v15, :cond_19

    move/from16 v30, v6

    goto :goto_d

    :cond_19
    :goto_c
    move/from16 v30, v17

    :goto_d
    if-ne v2, v15, :cond_1a

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_e
    move-object/from16 v24, v8

    goto :goto_f

    :cond_1a
    const/4 v8, 0x5

    if-ne v2, v8, :cond_1b

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_e

    :cond_1b
    if-ne v2, v10, :cond_1c

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_e

    :cond_1c
    move-object/from16 v24, v16

    :goto_f
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v8

    iget-object v4, v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-object v2, v7

    iget v7, v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    iget-object v1, v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    sget-object v5, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    iget-object v3, v3, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v3, :cond_1d

    iget-object v3, v3, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v3, :cond_1d

    iget-boolean v3, v3, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    :goto_10
    move/from16 v18, v15

    move-object v15, v1

    goto :goto_11

    :cond_1d
    move/from16 v3, v17

    goto :goto_10

    :goto_11
    new-instance v1, Landroidx/compose/ui/text/android/TextLayout;

    move v0, v8

    move v8, v3

    move v3, v0

    move/from16 v0, p3

    move-object/from16 v34, v12

    move/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v10, v28

    move/from16 v11, v29

    move/from16 v12, v30

    move/from16 v14, v32

    invoke-direct/range {v1 .. v15}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILandroidx/compose/ui/text/android/LayoutIntrinsics;)V

    const/4 v15, 0x2

    if-ne v0, v15, :cond_23

    invoke-virtual {v1}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    move-result v0

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    if-le v0, v2, :cond_23

    const/4 v0, 0x1

    if-le v9, v0, :cond_23

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    const/4 v2, 0x0

    :goto_12
    iget v3, v1, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    if-ge v2, v3, :cond_1f

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1e

    goto :goto_13

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1f
    move v2, v3

    :goto_13
    move-object/from16 v0, p0

    if-ltz v2, :cond_22

    iget v3, v0, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    if-eq v2, v3, :cond_22

    const/4 v3, 0x1

    if-ge v2, v3, :cond_20

    const/16 v27, 0x1

    goto :goto_14

    :cond_20
    move/from16 v27, v2

    :goto_14
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v21

    iget-object v2, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v3, v2, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v4, v2, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    iget-object v7, v2, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget-object v2, v2, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    sget-object v8, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    iget-object v2, v2, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v2, :cond_21

    iget-object v2, v2, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v2, :cond_21

    iget-boolean v2, v2, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    move/from16 v26, v2

    goto :goto_15

    :cond_21
    const/16 v26, 0x0

    :goto_15
    new-instance v19, Landroidx/compose/ui/text/android/TextLayout;

    move-object/from16 v20, v1

    move-object/from16 v22, v3

    move/from16 v25, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v33, v7

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    invoke-direct/range {v19 .. v33}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILandroidx/compose/ui/text/android/LayoutIntrinsics;)V

    move-object/from16 v1, v19

    :cond_22
    iput-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    goto :goto_16

    :cond_23
    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    :goto_16
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v1, v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-object/from16 v2, v34

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v6, v4

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    const-wide v9, 0xffffffffL

    and-long/2addr v4, v9

    or-long/2addr v4, v6

    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v1, v1, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spanned;

    if-nez v2, :cond_24

    move-object/from16 v1, v16

    const/4 v3, 0x0

    goto :goto_17

    :cond_24
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/text/Spanned;

    const/4 v4, -0x1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v4, v2, :cond_25

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/text/Spanned;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    goto :goto_17

    :cond_25
    const/4 v3, 0x0

    move-object/from16 v1, v16

    :goto_17
    if-eqz v1, :cond_26

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v1

    :goto_18
    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v6, v4

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v6, v8

    and-long/2addr v4, v9

    or-long/2addr v4, v6

    iget-object v2, v2, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v6, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_18

    :cond_26
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/Spanned;

    if-nez v2, :cond_27

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_21

    :cond_27
    move-object v2, v1

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v4, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    invoke-interface {v2, v3, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v1

    move v12, v3

    :goto_19
    if-ge v12, v5, :cond_32

    aget-object v6, v1, v12

    check-cast v6, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v9, v9, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    iget v10, v0, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    if-lt v9, v10, :cond_28

    const/4 v10, 0x1

    goto :goto_1a

    :cond_28
    move v10, v3

    :goto_1a
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    if-lez v11, :cond_29

    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    if-le v8, v11, :cond_29

    const/4 v11, 0x1

    goto :goto_1b

    :cond_29
    move v11, v3

    :goto_1b
    iget-object v13, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v13, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    move-result v13

    if-le v8, v13, :cond_2a

    const/4 v8, 0x1

    goto :goto_1c

    :cond_2a
    move v8, v3

    :goto_1c
    if-nez v11, :cond_2b

    if-nez v8, :cond_2b

    if-eqz v10, :cond_2c

    :cond_2b
    const/4 v11, 0x1

    goto :goto_1f

    :cond_2c
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v8, v8, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v8

    if-eqz v8, :cond_2d

    sget-object v8, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    goto :goto_1d

    :cond_2d
    sget-object v8, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    :goto_1d
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const-string v10, "PlaceholderSpan is not laid out yet."

    if-eqz v8, :cond_30

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2f

    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v8, v7, v3}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    move-result v7

    iget-boolean v8, v6, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    if-nez v8, :cond_2e

    invoke-static {v10}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_2e
    iget v8, v6, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    goto :goto_1e

    :cond_2f
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_30
    const/4 v11, 0x1

    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v8, v7, v3}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    move-result v7

    :goto_1e
    iget-boolean v8, v6, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    if-nez v8, :cond_31

    invoke-static {v10}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_31
    iget v8, v6, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    int-to-float v8, v8

    add-float/2addr v8, v7

    iget-object v10, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v10, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v9

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v9

    new-instance v10, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v10, v7, v9, v8, v6}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    goto :goto_20

    :goto_1f
    move-object/from16 v10, v16

    :goto_20
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_19

    :cond_32
    move-object v1, v4

    :goto_21
    iput-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->placeholderRects:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getHeight()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final getWidth()F
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->constraints:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final paint(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 4

    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-boolean v1, v0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result p0

    invoke-virtual {p1, v2, v2, v1, p0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_0
    iget p0, v0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    int-to-float v1, p0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    sget-object v1, Landroidx/compose/ui/text/android/TextLayout_androidKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    iput-object p1, v1, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    if-eqz p0, :cond_3

    const/4 v1, -0x1

    int-to-float v1, v1

    int-to-float p0, p0

    mul-float/2addr v1, p0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    :goto_0
    iget-boolean p0, v0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public final paint-LG529CI(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v1, v0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    invoke-virtual {v0, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    invoke-virtual {v0, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph;->paint(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    return-void
.end method

.method public final paint-hn5TExg(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v1, v0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, p2, v2, v3, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    invoke-virtual {v0, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    invoke-virtual {v0, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph;->paint(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    return-void
.end method
