.class public final Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;->this$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;->this$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    if-nez v2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iput-boolean v1, v2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->isShowingSubstitution:Z

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;->this$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    iget-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->substitution:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iput-object v3, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->substitution:Ljava/lang/String;

    iget-object v1, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    if-eqz v1, :cond_3

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget v5, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    iget-boolean v6, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    iget v7, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    iget v8, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    iput-object v3, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->text:Ljava/lang/String;

    iput-object v2, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    iput-object v4, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput v5, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    iput-boolean v6, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    iput v7, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    iput v8, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->minLines:I

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->markDirty()V

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget v6, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    iget-boolean v7, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    iget v8, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    iget v9, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    iput-object v2, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    :cond_3
    :goto_1
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$1;->this$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v4

    goto :goto_2

    :cond_4
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :goto_2
    const/4 v15, 0x0

    const v16, 0xfffffe

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    invoke-static/range {v3 .. v16}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v19

    iget-object v0, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v3, 0x0

    if-nez v0, :cond_5

    :goto_3
    move-object v6, v3

    goto :goto_4

    :cond_5
    iget-object v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v6, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->text:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    iget-object v6, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    iget-wide v6, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    const-wide v8, -0x1fffffffdL

    and-long v27, v6, v8

    new-instance v6, Landroidx/compose/ui/text/TextLayoutResult;

    new-instance v17, Landroidx/compose/ui/text/TextLayoutInput;

    iget v7, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    iget-boolean v8, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    iget v9, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    iget-object v10, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    sget-object v20, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object/from16 v25, v0

    move-object/from16 v24, v4

    move-object/from16 v18, v5

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v26, v10

    invoke-direct/range {v17 .. v28}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)V

    move-object/from16 v0, v17

    move-object/from16 v21, v24

    move-object/from16 v22, v26

    new-instance v10, Landroidx/compose/ui/text/MultiParagraph;

    new-instance v17, Lcom/motorola/camera/AppFeatures;

    invoke-direct/range {v17 .. v22}, Lcom/motorola/camera/AppFeatures;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    iget v14, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    iget v15, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    move-object/from16 v11, v17

    move-wide/from16 v12, v27

    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Lcom/motorola/camera/AppFeatures;JII)V

    iget-wide v4, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    invoke-direct {v6, v0, v10, v4, v5}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    :goto_4
    if-eqz v6, :cond_9

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    :cond_9
    if-eqz v3, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
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
