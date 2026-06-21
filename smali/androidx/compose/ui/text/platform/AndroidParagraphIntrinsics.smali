.class public final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;


# instance fields
.field public final annotations:Ljava/util/List;

.field public final charSequence:Ljava/lang/CharSequence;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

.field public final placeholders:Ljava/util/List;

.field public resolvedTypefaces:Landroidx/core/view/MenuHostHelper;

.field public final style:Landroidx/compose/ui/text/TextStyle;

.field public final text:Ljava/lang/String;

.field public final textDirectionHeuristic:I

.field public final textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    iput-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->annotations:Ljava/util/List;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    move-object/from16 v4, p5

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    new-instance v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-interface {v3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput v5, v4, Landroid/text/TextPaint;->density:F

    sget-object v5, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    iput-object v5, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    const/4 v5, 0x3

    iput v5, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    sget-object v7, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    iput-object v7, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget-object v7, v1, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    iget-object v7, v1, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v7, v7, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    iget-object v8, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v8, v8, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x4

    if-ne v7, v11, :cond_1

    :cond_0
    :goto_0
    move v7, v9

    goto :goto_2

    :cond_1
    const/4 v12, 0x5

    if-ne v7, v12, :cond_3

    :cond_2
    move v7, v5

    goto :goto_2

    :cond_3
    if-ne v7, v6, :cond_4

    move v7, v10

    goto :goto_2

    :cond_4
    if-ne v7, v9, :cond_5

    move v7, v6

    goto :goto_2

    :cond_5
    if-ne v7, v5, :cond_6

    goto :goto_1

    :cond_6
    const/high16 v12, -0x80000000

    if-ne v7, v12, :cond_73

    :goto_1
    if-eqz v8, :cond_7

    iget-object v7, v8, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/intl/Locale;

    iget-object v7, v7, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    if-nez v7, :cond_8

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v7

    if-eqz v7, :cond_0

    if-eq v7, v6, :cond_2

    goto :goto_0

    :goto_2
    iput v7, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    new-instance v7, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;

    invoke-direct {v7, v6, v0}, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;-><init>(ILjava/lang/Object;)V

    iget-object v8, v1, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v8, v8, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    if-nez v8, :cond_9

    sget-object v8, Landroidx/compose/ui/text/style/TextMotion;->Static:Landroidx/compose/ui/text/style/TextMotion;

    :cond_9
    iget-boolean v12, v8, Landroidx/compose/ui/text/style/TextMotion;->subpixelTextPositioning:Z

    if-eqz v12, :cond_a

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v12

    or-int/lit16 v12, v12, 0x80

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v12

    and-int/lit16 v12, v12, -0x81

    :goto_3
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setFlags(I)V

    iget v8, v8, Landroidx/compose/ui/text/style/TextMotion;->linearity:I

    if-ne v8, v6, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x40

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_4

    :cond_b
    if-ne v8, v9, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_4

    :cond_c
    if-ne v8, v5, :cond_d

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    :goto_4
    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    move v8, v10

    :goto_5
    if-ge v8, v5, :cond_f

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v13, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    instance-of v13, v13, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v13, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_f
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_10

    move v2, v6

    goto :goto_7

    :cond_10
    move v2, v10

    :goto_7
    iget-wide v12, v1, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    iget-object v5, v1, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    iget-object v8, v1, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    iget-object v14, v1, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v15, v1, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    iget-wide v9, v1, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    move/from16 p4, v6

    move-object/from16 p5, v7

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v6

    move-wide/from16 v17, v12

    const-wide v11, 0x100000000L

    invoke-static {v6, v7, v11, v12}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v13

    if-eqz v13, :cond_11

    move-wide/from16 v11, v17

    invoke-interface {v3, v11, v12}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_8

    :cond_11
    const-wide v11, 0x200000000L

    invoke-static {v6, v7, v11, v12}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v7

    mul-float/2addr v7, v6

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_12
    :goto_8
    iget-object v6, v1, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    if-nez v6, :cond_14

    iget-object v7, v1, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-nez v7, :cond_14

    iget-object v7, v1, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v7, :cond_13

    goto :goto_9

    :cond_13
    move/from16 p3, v2

    move-object/from16 v17, v14

    goto :goto_d

    :cond_14
    :goto_9
    iget-object v7, v1, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v7, :cond_15

    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_15
    iget-object v11, v1, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-eqz v11, :cond_16

    iget v11, v11, Landroidx/compose/ui/text/font/FontStyle;->value:I

    goto :goto_a

    :cond_16
    const/4 v11, 0x0

    :goto_a
    iget-object v12, v1, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v12, :cond_17

    iget v12, v12, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    goto :goto_b

    :cond_17
    const v12, 0xffff

    :goto_b
    const-string v13, "null cannot be cast to non-null type android.graphics.Typeface"

    move/from16 p3, v2

    move-object/from16 v17, v14

    move-object/from16 v2, p5

    iget-object v14, v2, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;->$this_populate:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v2, v14, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    check-cast v2, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    invoke-virtual {v2, v6, v7, v11, v12}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    move-result-object v2

    instance-of v6, v2, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    if-nez v6, :cond_18

    new-instance v6, Landroidx/core/view/MenuHostHelper;

    iget-object v7, v14, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/core/view/MenuHostHelper;

    invoke-direct {v6, v2, v7}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;Landroidx/core/view/MenuHostHelper;)V

    iput-object v6, v14, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/core/view/MenuHostHelper;

    iget-object v2, v6, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/Typeface;

    goto :goto_c

    :cond_18
    iget-object v2, v2, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/Typeface;

    :goto_c
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_d
    if-eqz v8, :cond_1c

    sget-object v6, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    sget-object v6, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v7

    iget-object v11, v6, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v11, Lcom/google/mlkit/common/internal/zzc;

    monitor-enter v11

    :try_start_0
    iget-object v12, v6, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/ui/text/intl/LocaleList;

    if-eqz v12, :cond_19

    iget-object v13, v6, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v13, Landroid/os/LocaleList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v7, v13, :cond_19

    monitor-exit v11

    goto :goto_f

    :cond_19
    :try_start_1
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v12, :cond_1a

    new-instance v2, Landroidx/compose/ui/text/intl/Locale;

    move/from16 v19, v12

    invoke-virtual {v7, v14}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v2, v12}, Landroidx/compose/ui/text/intl/Locale;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v19

    goto :goto_e

    :catchall_0
    move-exception v0

    goto :goto_11

    :cond_1a
    new-instance v12, Landroidx/compose/ui/text/intl/LocaleList;

    invoke-direct {v12, v13}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    iput-object v7, v6, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    iput-object v12, v6, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    :goto_f
    invoke-virtual {v8, v12}, Landroidx/compose/ui/text/intl/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, v8, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/intl/Locale;

    iget-object v7, v7, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1b
    const/4 v7, 0x0

    new-array v6, v7, [Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Locale;

    array-length v6, v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Locale;

    new-instance v6, Landroid/os/LocaleList;

    invoke-direct {v6, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_12

    :goto_11
    monitor-exit v11

    throw v0

    :cond_1c
    :goto_12
    if-eqz v5, :cond_1d

    const-string v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_1d
    if-eqz v15, :cond_1e

    sget-object v2, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    invoke-virtual {v15, v2}, Landroidx/compose/ui/text/style/TextGeometricTransform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    iget v5, v15, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    mul-float/2addr v2, v5

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    iget v5, v15, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    add-float/2addr v2, v5

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_1e
    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v2

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v7

    invoke-virtual {v4, v2, v5, v6, v7}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    iget-object v2, v1, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {v4, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    iget-object v2, v1, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v4, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    iget-object v2, v1, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-virtual {v4, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v5

    const-wide v7, 0x100000000L

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_21

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v2

    cmpg-float v2, v2, v5

    if-nez v2, :cond_1f

    goto :goto_13

    :cond_1f
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v6

    mul-float/2addr v6, v2

    invoke-interface {v3, v9, v10}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v2

    cmpg-float v3, v6, v5

    if-nez v3, :cond_20

    goto :goto_14

    :cond_20
    div-float/2addr v2, v6

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_14

    :cond_21
    :goto_13
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v2

    const-wide v11, 0x200000000L

    invoke-static {v2, v3, v11, v12}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :cond_22
    :goto_14
    iget-wide v2, v1, Landroidx/compose/ui/text/SpanStyle;->background:J

    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz p3, :cond_24

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v6

    const-wide v11, 0x100000000L

    invoke-static {v6, v7, v11, v12}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v4

    cmpg-float v4, v4, v5

    if-nez v4, :cond_23

    goto :goto_15

    :cond_23
    move/from16 v4, p4

    goto :goto_16

    :cond_24
    :goto_15
    const/4 v4, 0x0

    :goto_16
    sget-wide v6, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_25

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->Transparent:J

    invoke-static {v2, v3, v11, v12}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_25

    move/from16 v8, p4

    goto :goto_17

    :cond_25
    const/4 v8, 0x0

    :goto_17
    if-eqz v1, :cond_27

    iget v11, v1, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    invoke-static {v11, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_26

    goto :goto_18

    :cond_26
    move/from16 v11, p4

    goto :goto_19

    :cond_27
    :goto_18
    const/4 v11, 0x0

    :goto_19
    if-nez v4, :cond_28

    if-nez v8, :cond_28

    if-nez v11, :cond_28

    const/4 v1, 0x0

    goto :goto_1e

    :cond_28
    if-eqz v4, :cond_29

    :goto_1a
    move-wide/from16 v29, v9

    goto :goto_1b

    :cond_29
    sget-wide v9, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    goto :goto_1a

    :goto_1b
    if-eqz v8, :cond_2a

    move-wide/from16 v34, v2

    goto :goto_1c

    :cond_2a
    move-wide/from16 v34, v6

    :goto_1c
    if-eqz v11, :cond_2b

    move-object/from16 v31, v1

    goto :goto_1d

    :cond_2b
    const/16 v31, 0x0

    :goto_1d
    new-instance v19, Landroidx/compose/ui/text/SpanStyle;

    const/16 v37, 0x0

    const v38, 0xf67f

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    invoke-direct/range {v19 .. v38}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v1, v19

    :goto_1e
    if-eqz v1, :cond_2d

    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v2, :cond_2e

    if-nez v4, :cond_2c

    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v7, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    goto :goto_20

    :cond_2c
    iget-object v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->annotations:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    :goto_20
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_2d
    iget-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->annotations:Ljava/util/List;

    :cond_2e
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    iget-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    iget-object v10, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    sget-object v7, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const-wide/16 v8, 0x0

    const-wide v11, 0xff00000000L

    if-eqz v7, :cond_2f

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2f

    iget-object v7, v4, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v7, v7, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    sget-object v13, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    iget-object v7, v4, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget-wide v13, v7, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    and-long/2addr v13, v11

    cmp-long v7, v13, v8

    if-nez v7, :cond_2f

    goto/16 :goto_4e

    :cond_2f
    instance-of v7, v1, Landroid/text/Spannable;

    if-eqz v7, :cond_30

    move-object v7, v1

    check-cast v7, Landroid/text/Spannable;

    goto :goto_21

    :cond_30
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_21
    iget-object v13, v4, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v14, v4, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v13, v13, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    sget-object v15, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    const/16 v15, 0x21

    if-eqz v13, :cond_31

    sget-object v13, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move/from16 p3, v5

    const/4 v5, 0x0

    invoke-interface {v7, v13, v5, v1, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_22

    :cond_31
    move/from16 p3, v5

    :goto_22
    iget-object v1, v4, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v1, :cond_32

    iget-object v1, v1, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v1, :cond_32

    iget-boolean v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    goto :goto_23

    :cond_32
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_34

    iget-object v1, v14, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v1, :cond_34

    move-wide/from16 v19, v8

    iget-wide v8, v14, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v8, v9, v2, v10}, Lkotlinx/coroutines/channels/ChannelKt;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_33

    new-instance v5, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    invoke-direct {v5, v1}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(F)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8, v1, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_33
    const/4 v8, 0x0

    goto :goto_29

    :cond_34
    move-wide/from16 v19, v8

    iget-object v1, v14, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v1, :cond_35

    sget-object v1, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    :cond_35
    iget-wide v8, v14, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v8, v9, v2, v10}, Lkotlinx/coroutines/channels/ChannelKt;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_36

    goto :goto_24

    :cond_36
    invoke-static {v7}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v5

    const/16 v8, 0xa

    if-ne v5, v8, :cond_37

    :goto_24
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    :goto_25
    move/from16 v23, v5

    goto :goto_26

    :cond_37
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v5

    goto :goto_25

    :goto_26
    new-instance v21, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v5, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    and-int/lit8 v8, v5, 0x1

    if-lez v8, :cond_38

    move/from16 v24, p4

    goto :goto_27

    :cond_38
    const/16 v24, 0x0

    :goto_27
    and-int/lit8 v5, v5, 0x10

    if-lez v5, :cond_39

    move/from16 v25, p4

    goto :goto_28

    :cond_39
    const/16 v25, 0x0

    :goto_28
    iget v1, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    const/16 v27, 0x0

    move/from16 v26, v1

    invoke-direct/range {v21 .. v27}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIZZFZ)V

    move-object/from16 v1, v21

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v8, 0x0

    invoke-interface {v7, v1, v8, v5, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_29
    iget-object v1, v14, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-eqz v1, :cond_3b

    move/from16 p1, v8

    iget-wide v8, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    move-wide/from16 v17, v11

    iget-wide v11, v1, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    move/from16 p6, v2

    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v1

    invoke-static {v8, v9, v1, v2}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v1

    invoke-static {v11, v12, v1, v2}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_3a
    and-long v1, v8, v17

    cmp-long v1, v1, v19

    if-nez v1, :cond_3c

    :cond_3b
    :goto_2a
    move-object v13, v6

    goto/16 :goto_2d

    :cond_3c
    and-long v1, v11, v17

    cmp-long v1, v1, v19

    if-nez v1, :cond_3d

    goto :goto_2a

    :cond_3d
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v1

    move-object v13, v6

    const-wide v5, 0x100000000L

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v17

    if-eqz v17, :cond_3e

    invoke-interface {v10, v8, v9}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v1

    const-wide v5, 0x200000000L

    goto :goto_2b

    :cond_3e
    const-wide v5, 0x200000000L

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v1

    mul-float v1, v1, p6

    goto :goto_2b

    :cond_3f
    move/from16 v1, p3

    :goto_2b
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v8

    const-wide v5, 0x100000000L

    invoke-static {v8, v9, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v10, v11, v12}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v2

    goto :goto_2c

    :cond_40
    const-wide v5, 0x200000000L

    invoke-static {v8, v9, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v2

    mul-float v2, v2, p6

    goto :goto_2c

    :cond_41
    move/from16 v2, p3

    :goto_2c
    new-instance v5, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v1, v8

    float-to-int v1, v1

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v2, v8

    float-to-int v2, v2

    invoke-direct {v5, v1, v2}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8, v1, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v2, :cond_46

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v8, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    instance-of v9, v8, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v9, :cond_45

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/text/SpanStyle;

    iget-object v11, v9, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    if-nez v11, :cond_43

    iget-object v11, v9, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-nez v11, :cond_43

    iget-object v9, v9, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v9, :cond_42

    goto :goto_2f

    :cond_42
    const/4 v9, 0x0

    goto :goto_30

    :cond_43
    :goto_2f
    move/from16 v9, p4

    :goto_30
    if-nez v9, :cond_44

    check-cast v8, Landroidx/compose/ui/text/SpanStyle;

    iget-object v8, v8, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v8, :cond_45

    :cond_44
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_46
    iget-object v2, v4, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    if-nez v4, :cond_48

    iget-object v5, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-nez v5, :cond_48

    iget-object v5, v2, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v5, :cond_47

    goto :goto_31

    :cond_47
    const/4 v5, 0x0

    goto :goto_32

    :cond_48
    :goto_31
    move/from16 v5, p4

    :goto_32
    if-nez v5, :cond_4a

    iget-object v5, v2, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v5, :cond_49

    goto :goto_33

    :cond_49
    const/4 v2, 0x0

    goto :goto_34

    :cond_4a
    :goto_33
    iget-object v5, v2, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v6, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    new-instance v19, Landroidx/compose/ui/text/SpanStyle;

    const/16 v37, 0x0

    const v38, 0xffc3

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    invoke-direct/range {v19 .. v38}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v2, v19

    :goto_34
    new-instance v4, Landroidx/compose/foundation/IndicationKt$indication$2;

    move-object/from16 v5, p5

    const/4 v6, 0x4

    invoke-direct {v4, v6, v7, v5}, Landroidx/compose/foundation/IndicationKt$indication$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v6, p4

    if-gt v5, v6, :cond_4c

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_54

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    if-nez v2, :cond_4b

    goto :goto_35

    :cond_4b
    invoke-virtual {v2, v5}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v5

    :goto_35
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v2, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v2, v1}, Landroidx/compose/foundation/IndicationKt$indication$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    :cond_4c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    new-array v8, v6, [I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_36
    if-ge v11, v9, :cond_4d

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v15, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    aput v15, v8, v11

    add-int v15, v11, v5

    iget v12, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    aput v12, v8, v15

    add-int/lit8 v11, v11, 0x1

    const/16 v15, 0x21

    goto :goto_36

    :cond_4d
    const/4 v11, 0x1

    if-le v6, v11, :cond_4e

    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    :cond_4e
    invoke-static {v8}, Lkotlin/collections/ArraysKt;->first([I)I

    move-result v5

    move v9, v5

    const/4 v5, 0x0

    :goto_37
    if-ge v5, v6, :cond_54

    aget v11, v8, v5

    if-ne v11, v9, :cond_4f

    move-object/from16 v17, v1

    move-object/from16 p6, v2

    move/from16 v16, v5

    move/from16 v18, v6

    goto :goto_3b

    :cond_4f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 p6, v2

    const/4 v15, 0x0

    :goto_38
    if-ge v15, v12, :cond_52

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    move/from16 v16, v5

    iget v5, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    move/from16 v18, v6

    iget v6, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-eq v5, v6, :cond_51

    invoke-static {v9, v11, v5, v6}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    if-nez v2, :cond_50

    :goto_39
    move-object v2, v1

    goto :goto_3a

    :cond_50
    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v1

    goto :goto_39

    :cond_51
    :goto_3a
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v16

    move-object/from16 v1, v17

    move/from16 v6, v18

    goto :goto_38

    :cond_52
    move-object/from16 v17, v1

    move/from16 v16, v5

    move/from16 v18, v6

    if-eqz v2, :cond_53

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Landroidx/compose/foundation/IndicationKt$indication$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    move v9, v11

    :goto_3b
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v2, p6

    move-object/from16 v1, v17

    move/from16 v6, v18

    goto :goto_37

    :cond_54
    :goto_3c
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_3d
    if-ge v2, v1, :cond_65

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v6, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    instance-of v8, v6, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v8, :cond_55

    iget v11, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v12, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-ltz v11, :cond_55

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v11, v5, :cond_55

    if-le v12, v11, :cond_55

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v12, v5, :cond_56

    :cond_55
    move/from16 p6, v1

    move/from16 v16, v2

    move v15, v4

    goto/16 :goto_46

    :cond_56
    check-cast v6, Landroidx/compose/ui/text/SpanStyle;

    iget-object v5, v6, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    iget-wide v8, v6, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    iget-object v15, v6, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    if-eqz v5, :cond_57

    iget v5, v5, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    move/from16 p6, v1

    new-instance v1, Landroidx/compose/ui/text/android/style/SkewXSpan;

    move/from16 v16, v2

    const/4 v2, 0x1

    invoke-direct {v1, v5, v2}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(FI)V

    const/16 v2, 0x21

    invoke-interface {v7, v1, v11, v12, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3e

    :cond_57
    move/from16 p6, v1

    move/from16 v16, v2

    :goto_3e
    invoke-interface {v15}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    invoke-static {v7, v1, v2, v11, v12}, Lkotlinx/coroutines/channels/ChannelKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    invoke-interface {v15}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v1

    invoke-interface {v15}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v2

    if-eqz v1, :cond_59

    instance-of v5, v1, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v5, :cond_58

    check-cast v1, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/SolidColor;->value:J

    invoke-static {v7, v1, v2, v11, v12}, Lkotlinx/coroutines/channels/ChannelKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    goto :goto_3f

    :cond_58
    new-instance v5, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    check-cast v1, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v5, v1, v2}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;-><init>(Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;F)V

    const/16 v2, 0x21

    invoke-interface {v7, v5, v11, v12, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_59
    :goto_3f
    iget-object v1, v6, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    if-eqz v1, :cond_5c

    iget v1, v1, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    new-instance v2, Landroidx/compose/ui/text/android/style/TextDecorationSpan;

    or-int/lit8 v5, v1, 0x1

    if-ne v5, v1, :cond_5a

    const/4 v5, 0x1

    goto :goto_40

    :cond_5a
    const/4 v5, 0x0

    :goto_40
    or-int/lit8 v15, v1, 0x2

    if-ne v15, v1, :cond_5b

    const/4 v1, 0x1

    goto :goto_41

    :cond_5b
    const/4 v1, 0x0

    :goto_41
    invoke-direct {v2, v5, v1}, Landroidx/compose/ui/text/android/style/TextDecorationSpan;-><init>(ZZ)V

    const/16 v1, 0x21

    invoke-interface {v7, v2, v11, v12, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_42
    move-wide/from16 v17, v8

    goto :goto_43

    :cond_5c
    const/16 v1, 0x21

    goto :goto_42

    :goto_43
    iget-wide v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/channels/ChannelKt;->setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    iget-object v2, v6, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    if-eqz v2, :cond_5d

    new-instance v5, Landroidx/compose/ui/text/android/style/TypefaceSpan;

    const/4 v8, 0x1

    invoke-direct {v5, v8, v2}, Landroidx/compose/ui/text/android/style/TypefaceSpan;-><init>(ILjava/lang/Object;)V

    invoke-interface {v7, v5, v11, v12, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_44

    :cond_5d
    const/4 v8, 0x1

    :goto_44
    iget-object v2, v6, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-eqz v2, :cond_5e

    new-instance v5, Landroid/text/style/ScaleXSpan;

    iget v9, v2, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    invoke-direct {v5, v9}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    invoke-interface {v7, v5, v11, v12, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroidx/compose/ui/text/android/style/SkewXSpan;

    iget v2, v2, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    const/4 v9, 0x0

    invoke-direct {v5, v2, v9}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(FI)V

    invoke-interface {v7, v5, v11, v12, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5e
    iget-object v1, v6, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {v7, v1, v11, v12}, Lkotlinx/coroutines/channels/ChannelKt;->setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    iget-wide v1, v6, Landroidx/compose/ui/text/SpanStyle;->background:J

    const-wide/16 v19, 0x10

    cmp-long v5, v1, v19

    if-eqz v5, :cond_5f

    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result v1

    invoke-direct {v5, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {v7, v5, v11, v12, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5f
    iget-object v1, v6, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-eqz v1, :cond_61

    iget-wide v8, v1, Landroidx/compose/ui/graphics/Shadow;->offset:J

    new-instance v2, Landroidx/compose/ui/text/android/style/ShadowSpan;

    move v15, v4

    iget-wide v4, v1, Landroidx/compose/ui/graphics/Shadow;->color:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result v4

    const/16 v5, 0x20

    move-wide/from16 v19, v8

    shr-long v8, v19, v5

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    const-wide v8, 0xffffffffL

    and-long v8, v19, v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    iget v1, v1, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    cmpg-float v9, v1, p3

    if-nez v9, :cond_60

    const/4 v1, 0x1

    :cond_60
    invoke-direct {v2, v5, v8, v1, v4}, Landroidx/compose/ui/text/android/style/ShadowSpan;-><init>(FFFI)V

    const/16 v1, 0x21

    invoke-interface {v7, v2, v11, v12, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_45

    :cond_61
    move v15, v4

    const/16 v1, 0x21

    :goto_45
    iget-object v2, v6, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-eqz v2, :cond_62

    new-instance v4, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;

    invoke-direct {v4, v2}, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;-><init>(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    invoke-interface {v7, v4, v11, v12, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_62
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v1

    const-wide v5, 0x100000000L

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_63

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v1

    const-wide v11, 0x200000000L

    invoke-static {v1, v2, v11, v12}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_64

    :cond_63
    const/4 v4, 0x1

    goto :goto_47

    :cond_64
    :goto_46
    move v4, v15

    :goto_47
    add-int/lit8 v2, v16, 0x1

    move/from16 v1, p6

    goto/16 :goto_3d

    :cond_65
    move v15, v4

    if-eqz v15, :cond_6b

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_48
    if-ge v2, v1, :cond_6b

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    instance-of v6, v5, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v6, :cond_66

    iget v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-ltz v6, :cond_66

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v6, v8, :cond_66

    if-le v4, v6, :cond_66

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v4, v8, :cond_67

    :cond_66
    move/from16 p3, v1

    move v5, v2

    const/16 v2, 0x21

    goto :goto_4a

    :cond_67
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    iget-wide v8, v5, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v11

    move/from16 p3, v1

    move v5, v2

    const-wide v1, 0x100000000L

    invoke-static {v11, v12, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v15

    if-eqz v15, :cond_68

    new-instance v1, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    invoke-interface {v10, v8, v9}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v2

    invoke-direct {v1, v2}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;-><init>(F)V

    goto :goto_49

    :cond_68
    const-wide v1, 0x200000000L

    invoke-static {v11, v12, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v11

    if-eqz v11, :cond_69

    new-instance v1, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v2

    invoke-direct {v1, v2}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;-><init>(F)V

    goto :goto_49

    :cond_69
    const/4 v1, 0x0

    :goto_49
    const/16 v2, 0x21

    if-eqz v1, :cond_6a

    invoke-interface {v7, v1, v6, v4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6a
    :goto_4a
    add-int/lit8 v1, v5, 0x1

    move v2, v1

    move/from16 v1, p3

    goto :goto_48

    :cond_6b
    iget-object v1, v14, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-eqz v1, :cond_6d

    iget-wide v1, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v4

    const-wide v11, 0x100000000L

    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v10, v1, v2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    goto :goto_4b

    :cond_6c
    const-wide v11, 0x200000000L

    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    :cond_6d
    :goto_4b
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v1, :cond_6e

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_6e
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_72

    const/4 v8, 0x0

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    if-nez v1, :cond_71

    iget v1, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    const-class v2, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v7, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    move v10, v8

    :goto_4d
    if-ge v10, v1, :cond_70

    aget-object v2, v0, v10

    if-nez v2, :cond_6f

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4d

    :cond_6f
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_70
    const/4 v2, 0x0

    new-instance v0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    throw v2

    :cond_71
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_72
    move-object v1, v7

    :goto_4e
    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    new-instance v2, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    invoke-direct {v2, v1, v3, v4}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    iput-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    return-void

    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid TextDirection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getHasStaleResolvedFonts()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/core/view/MenuHostHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->isStaleResolvedFont()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final getMaxIntrinsicWidth()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    move-result p0

    return p0
.end method

.method public final getMinIntrinsicWidth()F
    .locals 9

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    return p0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    new-instance v2, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    new-instance v2, Ljava/util/PriorityQueue;

    new-instance v3, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v6

    if-ge v6, v4, :cond_1

    new-instance v6, Lkotlin/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    if-eqz v6, :cond_2

    iget-object v7, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget-object v6, v6, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sub-int/2addr v7, v6

    sub-int v6, v3, v5

    if-ge v7, v6, :cond_2

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    new-instance v6, Lkotlin/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v5

    move v8, v5

    move v5, v3

    move v3, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    iget-object v3, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v2, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getCharSequenceForIntrinsicWidth()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getCharSequenceForIntrinsicWidth()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v4, v3, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_3
    iput v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    return v0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
