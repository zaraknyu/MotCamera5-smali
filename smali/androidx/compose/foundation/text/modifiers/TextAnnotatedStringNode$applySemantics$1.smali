.class public final Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;->this$0:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;->this$0:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    if-nez v2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    iget-object v3, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onShowTranslation:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, v2, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->isShowingSubstitution:Z

    :goto_0
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    return-object v0

    :pswitch_0
    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;->this$0:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    iget-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-eqz v1, :cond_5

    iget-object v3, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->substitution:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iput-object v2, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->substitution:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    if-eqz v1, :cond_6

    iget-object v3, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget v5, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    iget-boolean v6, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    iget v7, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    iget v8, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    iput-object v2, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v3, v2}, Landroidx/compose/ui/text/TextStyle;->hasSameLayoutAffectingAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v2

    iput-object v3, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iput-object v3, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->paragraphIntrinsics:Lcom/motorola/camera/AppFeatures;

    iput-object v3, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    :cond_4
    iput-object v4, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput v5, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->overflow:I

    iput-boolean v6, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->softWrap:Z

    iput v7, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->maxLines:I

    iput v8, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->minLines:I

    iput-object v9, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->placeholders:Ljava/util/List;

    iput-object v3, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->paragraphIntrinsics:Lcom/motorola/camera/AppFeatures;

    iput-object v3, v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    goto :goto_2

    :cond_5
    new-instance v10, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    iget-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v10, v1, v2}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;)V

    new-instance v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    iget-object v3, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget v5, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    iget-boolean v6, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    iget v7, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    iget v8, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;)V

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    iput-object v1, v10, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    iput-object v10, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    :cond_6
    :goto_2
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;->this$0:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v2, :cond_8

    iget-object v3, v2, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    new-instance v4, Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v5, v3, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v6, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v7

    goto :goto_3

    :cond_7
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :goto_3
    const/16 v18, 0x0

    const v19, 0xfffffe

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v6

    iget-object v7, v3, Landroidx/compose/ui/text/TextLayoutInput;->placeholders:Ljava/util/List;

    iget v8, v3, Landroidx/compose/ui/text/TextLayoutInput;->maxLines:I

    iget-boolean v9, v3, Landroidx/compose/ui/text/TextLayoutInput;->softWrap:Z

    iget v10, v3, Landroidx/compose/ui/text/TextLayoutInput;->overflow:I

    iget-object v11, v3, Landroidx/compose/ui/text/TextLayoutInput;->density:Landroidx/compose/ui/unit/Density;

    iget-object v12, v3, Landroidx/compose/ui/text/TextLayoutInput;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v13, v3, Landroidx/compose/ui/text/TextLayoutInput;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-wide v14, v3, Landroidx/compose/ui/text/TextLayoutInput;->constraints:J

    invoke-direct/range {v4 .. v15}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)V

    iget-wide v5, v2, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    new-instance v0, Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-direct {v0, v4, v2, v5, v6}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
