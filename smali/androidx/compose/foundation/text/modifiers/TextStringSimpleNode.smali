.class public final Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public _layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

.field public baselineCache:Ljava/util/HashMap;

.field public fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public maxLines:I

.field public minLines:I

.field public overflow:I

.field public overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

.field public semanticsTextLayoutResult:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;

.field public softWrap:Z

.field public style:Landroidx/compose/ui/text/TextStyle;

.field public text:Ljava/lang/String;

.field public textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;


# virtual methods
.method public final applySemantics(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->semanticsTextLayoutResult:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;-><init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;I)V

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->semanticsTextLayoutResult:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;

    :cond_0
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->isShowingSubstitution:Z

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v5, 0xf

    aget-object v5, v4, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsConfiguration;Ljava/lang/Object;)V

    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->substitution:Ljava/lang/String;

    invoke-direct {v2, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/16 v3, 0xe

    aget-object v3, v4, v3

    invoke-virtual {v1, p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsConfiguration;Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;-><init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;I)V

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->SetTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;-><init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;I)V

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ShowTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v3, v4, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    new-instance v1, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v2, 0xb

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
    .locals 10

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->isShowingSubstitution:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v0

    :cond_3
    iget-object v1, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    if-eqz v1, :cond_e

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    iget-boolean p1, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->didOverflow:Z

    if-eqz p1, :cond_4

    iget-wide v3, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    const/16 v0, 0x20

    shr-long v5, v3, v0

    long-to-int v0, v5

    int-to-float v5, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    long-to-int v0, v3

    int-to-float v6, v0

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    :cond_4
    :try_start_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    if-nez v3, :cond_5

    sget-object v3, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    :cond_5
    move-object v6, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :goto_1
    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-nez v3, :cond_6

    sget-object v3, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    :cond_6
    move-object v5, v3

    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-nez v3, :cond_7

    sget-object v3, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    :cond_7
    move-object v7, v3

    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object p0, p0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {p0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v4

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/text/AndroidParagraph;->paint-hn5TExg(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v3

    goto :goto_2

    :cond_9
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :goto_2
    const-wide/16 v8, 0x10

    cmp-long v0, v3, v8

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v3

    cmp-long v0, v3, v8

    if-eqz v0, :cond_b

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v3

    goto :goto_3

    :cond_b
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    :goto_3
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/text/AndroidParagraph;->paint-LG529CI(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz p1, :cond_c

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_c
    :goto_5
    return-void

    :goto_6
    if-eqz p1, :cond_d

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_d
    throw p0

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "no paragraph (layoutCache="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", textSubstitution="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .locals 9

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    if-nez v0, :cond_0

    new-instance v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    iget-boolean v6, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V

    iput-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->isShowingSubstitution:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v2

    :cond_2
    invoke-virtual {v2, v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    iget v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->minLines:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v6, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    iget-object v7, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-static {v6, v3, v4, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgg;->from(Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    move-result-object v4

    iput-object v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    iget v6, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->minLines:I

    move-wide/from16 v7, p3

    invoke-virtual {v4, v6, v7, v8}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->coerceMinLines-Oh53vG4$foundation_release(IJ)J

    move-result-wide v6

    goto :goto_1

    :cond_3
    move-wide/from16 v7, p3

    move-wide v6, v7

    :goto_1
    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/16 v13, 0x20

    if-nez v4, :cond_4

    :goto_2
    const-wide p3, 0xffffffffL

    goto/16 :goto_7

    :cond_4
    iget-object v14, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    if-nez v14, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v14}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_2

    :cond_6
    iget-object v14, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v3, v14, :cond_7

    goto :goto_2

    :cond_7
    iget-wide v14, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    invoke-static {v6, v7, v14, v15}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v14

    if-eqz v14, :cond_8

    const-wide p3, 0xffffffffL

    goto :goto_3

    :cond_8
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v14

    const-wide p3, 0xffffffffL

    iget-wide v11, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v11

    if-eq v14, v11, :cond_9

    goto/16 :goto_7

    :cond_9
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v11

    iget-wide v14, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v12

    if-eq v11, v12, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v12

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_10

    iget-object v4, v4, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-boolean v4, v4, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    :goto_3
    iget-wide v3, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    invoke-static {v6, v7, v3, v4}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v3, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v4, v4, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    invoke-virtual {v4}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v11

    invoke-static {v11}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v11

    int-to-long v14, v4

    shl-long/2addr v14, v13

    int-to-long v11, v11

    and-long v11, v11, p3

    or-long/2addr v11, v14

    invoke-static {v6, v7, v11, v12}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v11

    iput-wide v11, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    iget v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    if-ne v4, v10, :cond_c

    goto :goto_4

    :cond_c
    shr-long v14, v11, v13

    long-to-int v4, v14

    int-to-float v4, v4

    invoke-virtual {v3}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v10

    cmpg-float v4, v4, v10

    if-ltz v4, :cond_e

    and-long v10, v11, p3

    long-to-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_d

    goto :goto_5

    :cond_d
    :goto_4
    move v3, v8

    goto :goto_6

    :cond_e
    :goto_5
    move v3, v5

    :goto_6
    iput-boolean v3, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->didOverflow:Z

    iput-wide v6, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    :cond_f
    move v3, v8

    goto/16 :goto_d

    :cond_10
    :goto_7
    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    if-eqz v4, :cond_11

    iget-object v11, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v3, v11, :cond_11

    invoke-interface {v4}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_11
    iput-object v3, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v15, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->text:Ljava/lang/String;

    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v4, v3}, Lkotlin/time/DurationKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v16

    iget-object v3, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    new-instance v14, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    sget-object v17, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object/from16 v18, v17

    move-object/from16 v20, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v20}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    move-object v4, v14

    :cond_12
    iput-object v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    iget-boolean v3, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    iget v11, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    invoke-interface {v4}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result v12

    invoke-static {v6, v7, v3, v11, v12}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->finalConstraints-tfFHcEY(JZIF)J

    move-result-wide v18

    iget-boolean v3, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    iget v11, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    iget v12, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    if-nez v3, :cond_15

    if-ne v11, v9, :cond_13

    goto :goto_8

    :cond_13
    const/4 v3, 0x4

    if-ne v11, v3, :cond_14

    goto :goto_8

    :cond_14
    const/4 v3, 0x5

    if-ne v11, v3, :cond_15

    :goto_8
    move/from16 v16, v5

    goto :goto_9

    :cond_15
    if-ge v12, v5, :cond_16

    goto :goto_8

    :cond_16
    move/from16 v16, v12

    :goto_9
    new-instance v14, Landroidx/compose/ui/text/AndroidParagraph;

    move-object v15, v4

    check-cast v15, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move/from16 v17, v11

    invoke-direct/range {v14 .. v19}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJ)V

    iput-wide v6, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    invoke-virtual {v14}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v3

    invoke-static {v3}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v3

    invoke-virtual {v14}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v4

    invoke-static {v4}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v4

    int-to-long v11, v3

    shl-long/2addr v11, v13

    int-to-long v3, v4

    and-long v3, v3, p3

    or-long/2addr v3, v11

    invoke-static {v6, v7, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    iget v6, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    if-ne v6, v10, :cond_17

    goto :goto_a

    :cond_17
    shr-long v6, v3, v13

    long-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v14}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_19

    and-long v3, v3, p3

    long-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v14}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_18

    goto :goto_b

    :cond_18
    :goto_a
    move v3, v8

    goto :goto_c

    :cond_19
    :goto_b
    move v3, v5

    :goto_c
    iput-boolean v3, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->didOverflow:Z

    iput-object v14, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    move v3, v5

    :goto_d
    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    if-eqz v4, :cond_1a

    invoke-interface {v4}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    :cond_1a
    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-wide v6, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    if-eqz v3, :cond_1c

    invoke-static {v0, v9}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->baselineCache:Ljava/util/HashMap;

    if-nez v2, :cond_1b

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->baselineCache:Ljava/util/HashMap;

    :cond_1b
    sget-object v3, Landroidx/compose/ui/layout/AlignmentLineKt;->FirstBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    invoke-virtual {v4, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Landroidx/compose/ui/layout/AlignmentLineKt;->LastBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    iget v8, v4, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    sub-int/2addr v8, v5

    invoke-virtual {v4, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    shr-long v2, v6, v13

    long-to-int v2, v2

    and-long v3, v6, p3

    long-to-int v3, v3

    invoke-static {v2, v2, v3, v3}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    move-result-wide v4

    move-object/from16 v6, p2

    invoke-interface {v6, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->baselineCache:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/16 v6, 0xb

    invoke-direct {v5, v4, v6}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    invoke-virtual {v1, v2, v3, v0, v5}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
