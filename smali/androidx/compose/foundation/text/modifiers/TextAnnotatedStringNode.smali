.class public final Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public _layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

.field public baselineCache:Ljava/util/Map;

.field public fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public maxLines:I

.field public minLines:I

.field public onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

.field public onShowTranslation:Lkotlin/jvm/functions/Function1;

.field public onTextLayout:Lkotlin/jvm/functions/Function1;

.field public overflow:I

.field public overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

.field public placeholders:Ljava/util/List;

.field public semanticsTextLayoutResult:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;

.field public softWrap:Z

.field public style:Landroidx/compose/ui/text/TextStyle;

.field public text:Landroidx/compose/ui/text/AnnotatedString;

.field public textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;


# virtual methods
.method public final applySemantics(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->semanticsTextLayoutResult:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;I)V

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->semanticsTextLayoutResult:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->substitution:Landroidx/compose/ui/text/AnnotatedString;

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v5, 0xe

    aget-object v5, v4, v5

    invoke-virtual {v3, p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsConfiguration;Ljava/lang/Object;)V

    iget-boolean v1, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->isShowingSubstitution:Z

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/16 v3, 0xf

    aget-object v3, v4, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsConfiguration;Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;I)V

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->SetTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;I)V

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ShowTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v3, v4, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    new-instance v1, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->ClearTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v2, v4, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, p0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v1, v4, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 14

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->isShowingSubstitution:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    :goto_0
    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_16

    iget-object v1, v0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget-wide v3, v0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    const/16 v0, 0x20

    shr-long v5, v3, v0

    long-to-int v5, v5

    int-to-float v5, v5

    iget v6, v1, Landroidx/compose/ui/text/MultiParagraph;->width:F

    cmpg-float v5, v5, v6

    const-wide v6, 0xffffffffL

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v5, v1, Landroidx/compose/ui/text/MultiParagraph;->didExceedMaxLines:Z

    if-nez v5, :cond_3

    and-long v10, v3, v6

    long-to-int v5, v10

    int-to-float v5, v5

    iget v10, v1, Landroidx/compose/ui/text/MultiParagraph;->height:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_4

    :cond_3
    :goto_1
    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    const/4 v10, 0x3

    if-ne v5, v10, :cond_5

    :cond_4
    move v10, v9

    goto :goto_2

    :cond_5
    move v10, v8

    :goto_2
    if-eqz v10, :cond_6

    shr-long v11, v3, v0

    long-to-int v5, v11

    int-to-float v5, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v11, v3

    shl-long v3, v4, v0

    and-long v5, v11, v6

    or-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    invoke-static {v2, v0}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V

    :cond_6
    :try_start_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    if-nez v3, :cond_7

    sget-object v3, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    :cond_7
    move-object v6, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_c

    :goto_3
    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-nez v3, :cond_8

    sget-object v3, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    :cond_8
    move-object v5, v3

    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-nez v3, :cond_9

    sget-object v3, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    :cond_9
    move-object v7, v3

    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v4

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/MultiParagraph;->paint-hn5TExg$default(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    goto :goto_7

    :cond_a
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v3

    goto :goto_4

    :cond_b
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :goto_4
    const-wide/16 v11, 0x10

    cmp-long v0, v3, v11

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v3

    cmp-long v0, v3, v11

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v3

    goto :goto_5

    :cond_d
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    :goto_5
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    iget-object v0, v1, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v9

    :goto_6
    if-ge v12, v11, :cond_e

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v1, v13, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/text/AndroidParagraph;->paint-LG529CI(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    iget-object v1, v13, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    invoke-virtual {v1}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v1

    const/4 v13, 0x0

    invoke-interface {v2, v13, v1}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_e
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    if-eqz v10, :cond_f

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_f
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->isShowingSubstitution:Z

    if-ne v0, v8, :cond_10

    move v0, v9

    goto :goto_8

    :cond_10
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgh;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v0

    :goto_8
    if-nez v0, :cond_14

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    if-eqz p0, :cond_12

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_9

    :cond_11
    move v8, v9

    :cond_12
    :goto_9
    if-nez v8, :cond_13

    goto :goto_b

    :cond_13
    :goto_a
    return-void

    :cond_14
    :goto_b
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-void

    :goto_c
    if-eqz v10, :cond_15

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_15
    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must call layoutWithConstraints first"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;
    .locals 10

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    if-nez v0, :cond_0

    new-instance v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    iget-boolean v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    iget-object v9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;)V

    iput-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->isShowingSubstitution:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    :goto_0
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    iget v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->minLines:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    iget-object v6, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-static {v4, v3, v6, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgg;->from(Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    move-result-object v4

    iput-object v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    iget v6, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->minLines:I

    move-wide/from16 v7, p3

    invoke-virtual {v4, v6, v7, v8}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->coerceMinLines-Oh53vG4$foundation_release(IJ)J

    move-result-wide v6

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p3

    move-wide v6, v7

    :goto_1
    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v8, 0x2

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v9, v4, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v10, v9, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    invoke-virtual {v10}, Lcom/motorola/camera/AppFeatures;->getHasStaleResolvedFonts()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    iget-object v10, v4, Landroidx/compose/ui/text/TextLayoutInput;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v11, v4, Landroidx/compose/ui/text/TextLayoutInput;->constraints:J

    if-eq v3, v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v6, v7, v11, v12}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v10

    if-eq v4, v10, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v10

    if-eq v4, v10, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    int-to-float v4, v4

    iget v10, v9, Landroidx/compose/ui/text/MultiParagraph;->height:F

    cmpg-float v4, v4, v10

    if-ltz v4, :cond_a

    iget-boolean v4, v9, Landroidx/compose/ui/text/MultiParagraph;->didExceedMaxLines:Z

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iget-wide v9, v4, Landroidx/compose/ui/text/TextLayoutInput;->constraints:J

    invoke-static {v6, v7, v9, v10}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_9
    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v2, v3, v6, v7, v4}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->textLayoutResult-VKLhPVY(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v3

    iput-object v3, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    goto/16 :goto_8

    :cond_a
    :goto_3
    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->paragraphIntrinsics:Lcom/motorola/camera/AppFeatures;

    if-eqz v4, :cond_c

    iget-object v9, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v3, v9, :cond_c

    invoke-virtual {v4}, Lcom/motorola/camera/AppFeatures;->getHasStaleResolvedFonts()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_4

    :cond_b
    move-object v12, v4

    goto :goto_5

    :cond_c
    :goto_4
    iput-object v3, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v11, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v4, v3}, Lkotlin/time/DurationKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v12

    iget-object v14, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v15, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->placeholders:Ljava/util/List;

    if-nez v4, :cond_d

    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_d
    move-object v13, v4

    new-instance v10, Lcom/motorola/camera/AppFeatures;

    invoke-direct/range {v10 .. v15}, Lcom/motorola/camera/AppFeatures;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    move-object v12, v10

    :goto_5
    iput-object v12, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->paragraphIntrinsics:Lcom/motorola/camera/AppFeatures;

    new-instance v11, Landroidx/compose/ui/text/MultiParagraph;

    iget-boolean v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->softWrap:Z

    iget v9, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->overflow:I

    invoke-virtual {v12}, Lcom/motorola/camera/AppFeatures;->getMaxIntrinsicWidth()F

    move-result v10

    invoke-static {v6, v7, v4, v9, v10}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->finalConstraints-tfFHcEY(JZIF)J

    move-result-wide v13

    iget-boolean v4, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->softWrap:Z

    iget v9, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->overflow:I

    iget v10, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->maxLines:I

    if-nez v4, :cond_10

    if-ne v9, v8, :cond_e

    goto :goto_6

    :cond_e
    const/4 v4, 0x4

    if-ne v9, v4, :cond_f

    goto :goto_6

    :cond_f
    const/4 v4, 0x5

    if-ne v9, v4, :cond_10

    :goto_6
    move v15, v5

    move/from16 v16, v9

    goto :goto_7

    :cond_10
    if-ge v10, v5, :cond_11

    goto :goto_6

    :cond_11
    move/from16 v16, v9

    move v15, v10

    :goto_7
    invoke-direct/range {v11 .. v16}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Lcom/motorola/camera/AppFeatures;JII)V

    invoke-virtual {v2, v3, v6, v7, v11}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->textLayoutResult-VKLhPVY(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v3

    iput-object v3, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    :goto_8
    iget-object v2, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v2, :cond_16

    iget-wide v3, v2, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    iget-object v6, v2, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget-object v6, v6, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/motorola/camera/AppFeatures;

    invoke-virtual {v6}, Lcom/motorola/camera/AppFeatures;->getHasStaleResolvedFonts()Z

    if-eqz v5, :cond_14

    invoke-static {v0, v8}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onTextLayout:Lkotlin/jvm/functions/Function1;

    if-eqz v5, :cond_12

    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->baselineCache:Ljava/util/Map;

    if-nez v5, :cond_13

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    :cond_13
    sget-object v6, Landroidx/compose/ui/layout/AlignmentLineKt;->FirstBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    iget v7, v2, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Landroidx/compose/ui/layout/AlignmentLineKt;->LastBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    iget v7, v2, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->baselineCache:Ljava/util/Map;

    :cond_14
    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    if-eqz v5, :cond_15

    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutResult;->placeholderRects:Ljava/util/ArrayList;

    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const/16 v2, 0x20

    shr-long v5, v3, v2

    long-to-int v2, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v2, v2, v3, v3}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    move-result-wide v4

    move-object/from16 v6, p2

    invoke-interface {v6, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->baselineCache:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/16 v6, 0xa

    invoke-direct {v5, v4, v6}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    invoke-virtual {v1, v2, v3, v0, v5}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call layoutWithConstraints first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
