.class public abstract Lkotlin/time/DurationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final access$parseDuration(Ljava/lang/String;)J
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_17

    sget v2, Lkotlin/time/Duration;->$r8$clinit:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    if-lez v3, :cond_1

    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;C)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-le v1, v3, :cond_16

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x50

    if-ne v5, v7, :cond_15

    add-int/2addr v3, v6

    if-eq v3, v1, :cond_14

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move v9, v2

    :goto_2
    if-ge v3, v1, :cond_12

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x54

    if-ne v10, v11, :cond_3

    if-nez v9, :cond_2

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v1, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    move v10, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_5

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-gt v12, v11, :cond_4

    const/16 v12, 0x3a

    if-ge v11, v12, :cond_4

    goto :goto_4

    :cond_4
    const-string v12, "+-."

    invoke-static {v12, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v11

    if-eqz v11, :cond_5

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "substring(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v3

    if-ltz v12, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_10

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v12, v12, 0x1

    if-nez v9, :cond_7

    const/16 v13, 0x44

    if-ne v3, v13, :cond_6

    sget-object v3, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid or unsupported duration ISO non-time unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v13, 0x48

    if-eq v3, v13, :cond_a

    const/16 v13, 0x4d

    if-eq v3, v13, :cond_9

    const/16 v13, 0x53

    if-ne v3, v13, :cond_8

    sget-object v3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid duration ISO time unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object v3, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    goto :goto_5

    :cond_a
    sget-object v3, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    :goto_5
    if-eqz v5, :cond_c

    invoke-virtual {v5, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected order of duration components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    const/16 v5, 0x2e

    const/4 v13, 0x6

    invoke-static {v10, v5, v2, v13}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    move-result v5

    sget-object v13, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    if-ne v3, v13, :cond_f

    if-lez v5, :cond_f

    invoke-virtual {v10, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lkotlin/time/DurationKt;->parseOverLongIsoComponent(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v13

    invoke-static {v7, v8, v13, v14}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v7

    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string/jumbo v5, "unit"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v10, v11, v3, v5}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {v13, v14}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v13

    const-wide v15, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v5, v15, v13

    if-gtz v5, :cond_d

    const-wide v15, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v5, v13, v15

    if-gez v5, :cond_d

    invoke-static {v13, v14}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide v10

    goto :goto_7

    :cond_d
    sget-object v5, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v10, v11, v3, v5}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide v10

    invoke-static {v10, v11}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v10

    invoke-static {v10, v11}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide v10

    :goto_7
    invoke-static {v7, v8, v10, v11}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v7

    :goto_8
    move-object v5, v3

    move v3, v12

    goto/16 :goto_2

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration value cannot be NaN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {v10}, Lkotlin/time/DurationKt;->parseOverLongIsoComponent(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v7

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing unit for value "

    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    if-eqz v4, :cond_13

    invoke-static {v7, v8}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    return-wide v0

    :cond_13
    return-wide v7

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The string is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final durationOfMillis(J)J
    .locals 2

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    return-wide p0
.end method

.method public static final durationOfMillisNormalized(J)J
    .locals 6

    const-wide v0, -0x431bde82d7aL

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide v0, 0x431bde82d7bL

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final durationOfNanos(J)J
    .locals 1

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    return-wide p0
.end method

.method public static final parseOverLongIsoComponent(Ljava/lang/String;)J
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const-string v3, "+-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sub-int v4, v0, v3

    const/16 v5, 0x3a

    const/16 v6, 0x30

    const/16 v7, 0x10

    if-le v4, v7, :cond_5

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_1

    if-ne v4, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const/16 v9, 0x31

    if-gt v9, v8, :cond_5

    if-ge v8, v5, :cond_5

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sub-int v3, v0, v4

    if-le v3, v7, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_4

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_5
    const-string v2, "+"

    invoke-static {p0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-le v0, v1, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v6, v0, :cond_6

    if-ge v0, v5, :cond_6

    invoke-static {v1, p0}, Lkotlin/text/StringsKt;->drop(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;
    .locals 27

    move-object/from16 v0, p0

    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    sget-object v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    sget-object v4, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_0
    sget-object v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    goto :goto_0

    :goto_1
    iget-wide v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    sget-object v6, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    const-wide v23, 0xff00000000L

    and-long v6, v3, v23

    const-wide/16 v25, 0x0

    cmp-long v6, v6, v25

    if-nez v6, :cond_1

    sget-wide v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultFontSize:J

    :cond_1
    move-wide v6, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v3, :cond_2

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_2
    move-object v8, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-eqz v3, :cond_3

    iget v3, v3, Landroidx/compose/ui/text/font/FontStyle;->value:I

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    new-instance v9, Landroidx/compose/ui/text/font/FontStyle;

    invoke-direct {v9, v3}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v3, :cond_4

    iget v3, v3, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    goto :goto_3

    :cond_4
    const v3, 0xffff

    :goto_3
    new-instance v10, Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-direct {v10, v3}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    if-nez v3, :cond_5

    sget-object v3, Landroidx/compose/ui/text/font/SystemFontFamily;->Default:Landroidx/compose/ui/text/font/DefaultFontFamily;

    :cond_5
    move-object v11, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    if-nez v3, :cond_6

    const-string v3, ""

    :cond_6
    move-object v12, v3

    iget-wide v13, v2, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    and-long v15, v13, v23

    cmp-long v3, v15, v25

    if-nez v3, :cond_7

    sget-wide v13, Landroidx/compose/ui/text/SpanStyleKt;->DefaultLetterSpacing:J

    :cond_7
    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v3, :cond_8

    iget v3, v3, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    new-instance v15, Landroidx/compose/ui/text/style/BaselineShift;

    invoke-direct {v15, v3}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-nez v3, :cond_9

    sget-object v3, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    :cond_9
    move-object/from16 v16, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    if-nez v3, :cond_c

    sget-object v3, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    sget-object v3, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v4

    move-object/from16 v18, v5

    iget-object v5, v3, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v5, Lcom/google/mlkit/common/internal/zzc;

    monitor-enter v5

    move-wide/from16 v19, v6

    :try_start_0
    iget-object v6, v3, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/text/intl/LocaleList;

    if-eqz v6, :cond_a

    iget-object v7, v3, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v7, Landroid/os/LocaleList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v7, :cond_a

    monitor-exit v5

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    :goto_5
    move-object v3, v6

    goto :goto_7

    :cond_a
    :try_start_1
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v21, v8

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_b

    move/from16 v17, v6

    new-instance v6, Landroidx/compose/ui/text/intl/Locale;

    move-object/from16 v22, v9

    invoke-virtual {v4, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v6, v9}, Landroidx/compose/ui/text/intl/Locale;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v17

    move-object/from16 v9, v22

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_b
    move-object/from16 v22, v9

    new-instance v6, Landroidx/compose/ui/text/intl/LocaleList;

    invoke-direct {v6, v7}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    iput-object v4, v3, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    iput-object v6, v3, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    goto :goto_5

    :goto_7
    move-object/from16 v17, v3

    goto :goto_9

    :goto_8
    monitor-exit v5

    throw v0

    :cond_c
    move-object/from16 v18, v5

    move-wide/from16 v19, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    goto :goto_7

    :goto_9
    iget-wide v3, v2, Landroidx/compose/ui/text/SpanStyle;->background:J

    const-wide/16 v5, 0x10

    cmp-long v5, v3, v5

    if-eqz v5, :cond_d

    goto :goto_a

    :cond_d
    sget-wide v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultBackgroundColor:J

    :goto_a
    iget-object v5, v2, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    if-nez v5, :cond_e

    sget-object v5, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    :cond_e
    iget-object v6, v2, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-nez v6, :cond_f

    sget-object v6, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    :cond_f
    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-nez v2, :cond_10

    sget-object v2, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    :cond_10
    move-object/from16 v8, v21

    move-object/from16 v21, v6

    move-wide/from16 v6, v19

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    move-wide/from16 v18, v3

    new-instance v4, Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 v9, v22

    move-object/from16 v22, v2

    invoke-direct/range {v4 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    sget v3, Landroidx/compose/ui/text/ParagraphStyleKt;->$r8$clinit:I

    new-instance v5, Landroidx/compose/ui/text/ParagraphStyle;

    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    const/4 v6, 0x5

    const/high16 v7, -0x80000000

    if-ne v3, v7, :cond_11

    move v3, v6

    :cond_11
    iget v8, v2, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v8, v9, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_13

    if-ne v8, v10, :cond_12

    goto :goto_b

    :cond_12
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13
    const/4 v6, 0x4

    goto :goto_b

    :cond_14
    if-ne v8, v7, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_16

    if-ne v6, v10, :cond_15

    const/4 v6, 0x2

    goto :goto_b

    :cond_15
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    move v6, v10

    goto :goto_b

    :cond_17
    move v6, v8

    :goto_b
    iget-wide v8, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    and-long v11, v8, v23

    cmp-long v11, v11, v25

    if-nez v11, :cond_18

    sget-wide v8, Landroidx/compose/ui/text/ParagraphStyleKt;->DefaultLineHeight:J

    :cond_18
    iget-object v11, v2, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v11, :cond_19

    sget-object v11, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    :cond_19
    iget-object v12, v2, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    move v13, v10

    move-object v10, v11

    move-object v11, v12

    iget-object v12, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    iget v14, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    if-nez v14, :cond_1a

    sget v14, Landroidx/compose/ui/text/style/LineBreak;->Simple:I

    :cond_1a
    iget v15, v2, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    if-ne v15, v7, :cond_1b

    move v15, v13

    :cond_1b
    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    if-nez v2, :cond_1c

    sget-object v2, Landroidx/compose/ui/text/style/TextMotion;->Static:Landroidx/compose/ui/text/style/TextMotion;

    :cond_1c
    move v7, v6

    move v13, v14

    move v14, v15

    move-object v15, v2

    move v6, v3

    invoke-direct/range {v5 .. v15}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    invoke-direct {v1, v4, v5, v0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    return-object v1
.end method

.method public static final toDuration(JLkotlin/time/DurationUnit;)J
    .locals 7

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v1, v2, v0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    neg-long v3, v1

    cmp-long v3, v3, p0

    if-gtz v3, :cond_0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method
