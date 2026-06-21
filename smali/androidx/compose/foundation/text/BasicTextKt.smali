.class public abstract Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;ILjava/util/Map;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v13, p6

    move/from16 v14, p7

    const v0, -0x5013ac4b

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v14, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v14

    goto :goto_1

    :cond_1
    move v0, v14

    :goto_1
    and-int/lit8 v3, v14, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    goto :goto_3

    :cond_3
    move-object/from16 v3, p1

    :goto_3
    and-int/lit16 v4, v14, 0x180

    if-nez v4, :cond_5

    move-object/from16 v4, p2

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_4

    :cond_4
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    goto :goto_5

    :cond_5
    move-object/from16 v4, p2

    :goto_5
    and-int/lit16 v5, v14, 0xc00

    if-nez v5, :cond_7

    move-object/from16 v5, p3

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x800

    goto :goto_6

    :cond_6
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v0, v6

    goto :goto_7

    :cond_7
    move-object/from16 v5, p3

    :goto_7
    and-int/lit16 v6, v14, 0x6000

    const/4 v15, 0x1

    if-nez v6, :cond_9

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4000

    goto :goto_8

    :cond_8
    const/16 v6, 0x2000

    :goto_8
    or-int/2addr v0, v6

    :cond_9
    const/high16 v6, 0x30000

    and-int/2addr v6, v14

    if-nez v6, :cond_b

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const/high16 v6, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v6, 0x10000

    :goto_9
    or-int/2addr v0, v6

    :cond_b
    const/high16 v6, 0x180000

    and-int/2addr v6, v14

    if-nez v6, :cond_d

    const v6, 0x7fffffff

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v6

    if-eqz v6, :cond_c

    const/high16 v6, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v6, 0x80000

    :goto_a
    or-int/2addr v0, v6

    :cond_d
    const/high16 v6, 0x36c00000

    or-int/2addr v0, v6

    const v6, 0x12492493

    and-int/2addr v6, v0

    const v7, 0x12492492

    const/4 v8, 0x0

    if-ne v6, v7, :cond_e

    move v6, v8

    goto :goto_b

    :cond_e
    move v6, v15

    :goto_b
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v13, v7, v6}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v7, 0x1

    const v6, 0x7fffffff

    invoke-static {v7, v6}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    sget-object v9, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->LocalSelectionRegistrar:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1a

    const v9, -0x5e65088e

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v9, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    iget-object v9, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, v1, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    if-eqz v10, :cond_10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v11

    move v12, v8

    :goto_c
    if-ge v12, v11, :cond_10

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v7, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    instance-of v7, v7, Landroidx/compose/ui/text/StringAnnotation;

    if-eqz v7, :cond_f

    iget-object v7, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    const-string v2, "androidx.compose.foundation.text.inlineContent"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v6, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-static {v8, v9, v2, v6}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_f

    move v3, v15

    goto :goto_d

    :cond_f
    add-int/lit8 v12, v12, 0x1

    const v6, 0x7fffffff

    const/4 v7, 0x1

    goto :goto_c

    :cond_10
    move v3, v8

    :goto_d
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgh;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v2

    if-nez v3, :cond_14

    if-nez v2, :cond_14

    const v0, -0x5e624d5c

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    const v6, 0x7fffffff

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    move v10, v7

    sget-object v0, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    iget v1, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v13, v4}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_11

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_11
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_e
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v13, v0, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v13, v3, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v13, v2, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v2, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_12

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    invoke-static {v1, v13, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_13
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v11, 0x0

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_10

    :cond_14
    move v11, v8

    const/4 v10, 0x1

    const v1, -0x5e555555

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v1, v0, 0xe

    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    goto :goto_f

    :cond_15
    move v15, v11

    :goto_f
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v15, :cond_16

    if-ne v1, v2, :cond_17

    :cond_16
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_17
    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString;

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_18

    if-ne v7, v2, :cond_19

    :cond_18
    new-instance v7, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;

    invoke-direct {v7, v1, v11}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_19
    move-object v6, v7

    check-cast v6, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v1, v0, 0x3

    and-int/lit16 v1, v1, 0x38e

    shr-int/lit8 v2, v0, 0xc

    const v7, 0xe000

    and-int/2addr v2, v7

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x9

    const/high16 v7, 0x70000

    and-int/2addr v2, v7

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x6

    const/high16 v7, 0x380000

    and-int/2addr v7, v2

    or-int/2addr v1, v7

    const/high16 v7, 0x1c00000

    and-int/2addr v7, v2

    or-int/2addr v1, v7

    const/high16 v7, 0xe000000

    and-int/2addr v7, v2

    or-int/2addr v1, v7

    const/high16 v7, 0x70000000

    and-int/2addr v2, v7

    or-int v8, v1, v2

    shr-int/lit8 v0, v0, 0x15

    and-int/lit16 v0, v0, 0x380

    or-int/lit16 v9, v0, 0x6000

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object v1, v4

    move-object v7, v13

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;II)V

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_10
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    move-object v6, v0

    move v5, v10

    goto :goto_11

    :cond_1a
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_1b
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v5, p4

    move-object/from16 v6, p5

    :goto_11
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1c

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v7, v14

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;ILjava/util/Map;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

.method public static final BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 16

    move-object/from16 v2, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v0, p8

    move/from16 v1, p9

    const v3, -0x3e089999

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v1, 0x6

    move-object/from16 v4, p0

    if-nez v3, :cond_1

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v5, v1, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_3
    and-int/lit16 v5, v1, 0x180

    if-nez v5, :cond_5

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v3, v8

    goto :goto_4

    :cond_5
    move-object/from16 v5, p2

    :goto_4
    and-int/lit16 v8, v1, 0xc00

    if-nez v8, :cond_7

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_5

    :cond_6
    const/16 v8, 0x400

    :goto_5
    or-int/2addr v3, v8

    :cond_7
    and-int/lit16 v8, v1, 0x6000

    if-nez v8, :cond_9

    move/from16 v8, p3

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x4000

    goto :goto_6

    :cond_8
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v3, v9

    goto :goto_7

    :cond_9
    move/from16 v8, p3

    :goto_7
    const/high16 v9, 0x30000

    and-int/2addr v9, v1

    if-nez v9, :cond_b

    move/from16 v9, p4

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_a

    const/high16 v10, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v10, 0x10000

    :goto_8
    or-int/2addr v3, v10

    goto :goto_9

    :cond_b
    move/from16 v9, p4

    :goto_9
    const/high16 v10, 0x180000

    and-int/2addr v10, v1

    if-nez v10, :cond_d

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v10

    if-eqz v10, :cond_c

    const/high16 v10, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v10, 0x80000

    :goto_a
    or-int/2addr v3, v10

    :cond_d
    const/high16 v10, 0xc00000

    and-int/2addr v10, v1

    if-nez v10, :cond_f

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v10

    if-eqz v10, :cond_e

    const/high16 v10, 0x800000

    goto :goto_b

    :cond_e
    const/high16 v10, 0x400000

    :goto_b
    or-int/2addr v3, v10

    :cond_f
    const/high16 v10, 0x6000000

    and-int/2addr v10, v1

    move-object/from16 v11, p7

    if-nez v10, :cond_11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/high16 v10, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v10, 0x2000000

    :goto_c
    or-int/2addr v3, v10

    :cond_11
    const/high16 v10, 0x30000000

    or-int/2addr v3, v10

    const v10, 0x12492493

    and-int/2addr v10, v3

    const v12, 0x12492492

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v10, v12, :cond_12

    move v10, v14

    goto :goto_d

    :cond_12
    move v10, v13

    :goto_d
    and-int/2addr v3, v14

    invoke-virtual {v0, v3, v10}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {v7, v6}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    sget-object v3, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->LocalSelectionRegistrar:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_16

    const v3, -0x5eabb4ee

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, -0x5e9f82a6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v3, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move v15, v9

    move v9, v6

    move-object v6, v10

    move v10, v7

    move v7, v8

    move v8, v15

    invoke-direct/range {v3 .. v11}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;)V

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v4, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v0, v3}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_13

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_13
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_e
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v4, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v3, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_14

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_14
    invoke-static {v5, v0, v5, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_15
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_f

    :cond_16
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_17
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_18

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public static final BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 16

    move-object/from16 v8, p8

    move/from16 v10, p9

    const v0, -0x46bd8e2e

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v10, 0x6

    if-nez v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v10

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move v1, v10

    :goto_1
    and-int/lit8 v2, v10, 0x30

    if-nez v2, :cond_3

    move-object/from16 v2, p1

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    goto :goto_3

    :cond_3
    move-object/from16 v2, p1

    :goto_3
    and-int/lit16 v3, v10, 0x180

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_4

    :cond_4
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_5
    move-object/from16 v3, p2

    :goto_5
    and-int/lit16 v4, v10, 0xc00

    const/4 v5, 0x0

    if-nez v4, :cond_7

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_6

    :cond_6
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v1, v4

    :cond_7
    and-int/lit16 v4, v10, 0x6000

    if-nez v4, :cond_9

    move/from16 v4, p3

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4000

    goto :goto_7

    :cond_8
    const/16 v6, 0x2000

    :goto_7
    or-int/2addr v1, v6

    goto :goto_8

    :cond_9
    move/from16 v4, p3

    :goto_8
    const/high16 v6, 0x30000

    and-int/2addr v6, v10

    if-nez v6, :cond_b

    move/from16 v6, p4

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_a

    const/high16 v7, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v7, 0x10000

    :goto_9
    or-int/2addr v1, v7

    goto :goto_a

    :cond_b
    move/from16 v6, p4

    :goto_a
    const/high16 v7, 0x180000

    and-int/2addr v7, v10

    if-nez v7, :cond_d

    move/from16 v7, p5

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v9

    if-eqz v9, :cond_c

    const/high16 v9, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v9, 0x80000

    :goto_b
    or-int/2addr v1, v9

    goto :goto_c

    :cond_d
    move/from16 v7, p5

    :goto_c
    const/high16 v9, 0xc00000

    and-int/2addr v9, v10

    if-nez v9, :cond_f

    move/from16 v9, p6

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v11

    if-eqz v11, :cond_e

    const/high16 v11, 0x800000

    goto :goto_d

    :cond_e
    const/high16 v11, 0x400000

    :goto_d
    or-int/2addr v1, v11

    goto :goto_e

    :cond_f
    move/from16 v9, p6

    :goto_e
    move/from16 v11, p10

    and-int/lit16 v12, v11, 0x100

    const/high16 v13, 0x6000000

    if-eqz v12, :cond_11

    or-int/2addr v1, v13

    :cond_10
    move-object/from16 v13, p7

    goto :goto_10

    :cond_11
    and-int/2addr v13, v10

    if-nez v13, :cond_10

    move-object/from16 v13, p7

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/high16 v14, 0x4000000

    goto :goto_f

    :cond_12
    const/high16 v14, 0x2000000

    :goto_f
    or-int/2addr v1, v14

    :goto_10
    const v14, 0x2492493

    and-int/2addr v14, v1

    const v15, 0x2492492

    if-eq v14, v15, :cond_13

    const/4 v14, 0x1

    goto :goto_11

    :cond_13
    const/4 v14, 0x0

    :goto_11
    and-int/lit8 v15, v1, 0x1

    invoke-virtual {v8, v15, v14}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v14

    if-eqz v14, :cond_15

    if-eqz v12, :cond_14

    move-object v7, v5

    goto :goto_12

    :cond_14
    move-object v7, v13

    :goto_12
    const v5, 0xffffffe

    and-int/2addr v1, v5

    move v5, v9

    move v9, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v6

    move v6, v5

    move/from16 v5, p5

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/ComposerImpl;I)V

    move-object v8, v7

    goto :goto_13

    :cond_15
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v8, v13

    :goto_13
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_16

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v9, v10

    move v10, v11

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 25

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v0, p7

    move/from16 v8, p8

    move/from16 v9, p9

    const v1, -0x7e46da9f

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v8, 0x6

    const/4 v6, 0x2

    move-object/from16 v10, p0

    if-nez v1, :cond_1

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    or-int/2addr v1, v8

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    and-int/lit8 v7, v8, 0x30

    const/16 v12, 0x20

    if-nez v7, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v12

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v1, v7

    :cond_3
    and-int/lit16 v7, v8, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v1, v7

    :cond_5
    and-int/lit16 v7, v8, 0xc00

    const/16 v15, 0x400

    const/16 v16, 0x800

    if-nez v7, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    move/from16 v7, v16

    goto :goto_4

    :cond_6
    move v7, v15

    :goto_4
    or-int/2addr v1, v7

    :cond_7
    and-int/lit16 v7, v8, 0x6000

    const/16 v17, 0x2000

    const/16 v18, 0x4000

    if-nez v7, :cond_9

    sget-object v7, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move/from16 v7, v18

    goto :goto_5

    :cond_8
    move/from16 v7, v17

    :goto_5
    or-int/2addr v1, v7

    :cond_9
    const/high16 v7, 0x30000

    and-int/2addr v7, v8

    if-nez v7, :cond_b

    move-object/from16 v7, p4

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/high16 v19, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v19, 0x10000

    :goto_6
    or-int v1, v1, v19

    goto :goto_7

    :cond_b
    move-object/from16 v7, p4

    :goto_7
    const/high16 v19, 0x180000

    and-int v19, v8, v19

    const/4 v5, 0x1

    if-nez v19, :cond_d

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_c

    const/high16 v19, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v19, 0x80000

    :goto_8
    or-int v1, v1, v19

    :cond_d
    const/high16 v19, 0xc00000

    and-int v19, v8, v19

    move/from16 v21, v15

    const/4 v15, 0x1

    if-nez v19, :cond_f

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_e

    const/high16 v19, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v19, 0x400000

    :goto_9
    or-int v1, v1, v19

    :cond_f
    const/high16 v19, 0x6000000

    and-int v19, v8, v19

    const v5, 0x7fffffff

    if-nez v19, :cond_11

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_10

    const/high16 v19, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v19, 0x2000000

    :goto_a
    or-int v1, v1, v19

    :cond_11
    const/high16 v19, 0x30000000

    and-int v19, v8, v19

    const/4 v5, 0x1

    if-nez v19, :cond_13

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v19, 0x10000000

    :goto_b
    or-int v1, v1, v19

    :cond_13
    and-int/lit8 v19, v9, 0x6

    move-object/from16 v5, p5

    if-nez v19, :cond_15

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const/4 v6, 0x4

    :cond_14
    or-int/2addr v6, v9

    goto :goto_c

    :cond_15
    move v6, v9

    :goto_c
    and-int/lit8 v20, v9, 0x30

    const/4 v11, 0x0

    if-nez v20, :cond_17

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    move/from16 v23, v12

    goto :goto_d

    :cond_16
    const/16 v23, 0x10

    :goto_d
    or-int v6, v6, v23

    :cond_17
    and-int/lit16 v13, v9, 0x180

    const/4 v15, 0x0

    if-nez v13, :cond_19

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    const/16 v13, 0x100

    goto :goto_e

    :cond_18
    const/16 v13, 0x80

    :goto_e
    or-int/2addr v6, v13

    :cond_19
    and-int/lit16 v13, v9, 0xc00

    if-nez v13, :cond_1b

    move-object/from16 v13, p6

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    goto :goto_f

    :cond_1a
    move/from16 v16, v21

    :goto_f
    or-int v6, v6, v16

    goto :goto_10

    :cond_1b
    move-object/from16 v13, p6

    :goto_10
    and-int/lit16 v15, v9, 0x6000

    if-nez v15, :cond_1e

    const v15, 0x8000

    and-int/2addr v15, v9

    if-nez v15, :cond_1c

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    goto :goto_11

    :cond_1c
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    :goto_11
    if-eqz v15, :cond_1d

    move/from16 v17, v18

    :cond_1d
    or-int v6, v6, v17

    :cond_1e
    const v15, 0x12492493

    and-int/2addr v15, v1

    const v14, 0x12492492

    if-ne v15, v14, :cond_20

    and-int/lit16 v6, v6, 0x2493

    const/16 v14, 0x2492

    if-eq v6, v14, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v6, 0x0

    goto :goto_13

    :cond_20
    :goto_12
    const/4 v6, 0x1

    :goto_13
    and-int/lit8 v14, v1, 0x1

    invoke-virtual {v0, v14, v6}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgh;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v6

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v6, :cond_24

    const v6, -0x249105e7

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v6, v1, 0x70

    if-ne v6, v12, :cond_21

    const/4 v6, 0x1

    goto :goto_14

    :cond_21
    const/4 v6, 0x0

    :goto_14
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v6, :cond_22

    if-ne v15, v14, :cond_23

    :cond_22
    new-instance v15, Landroidx/compose/foundation/text/TextLinkScope;

    invoke-direct {v15, v2}, Landroidx/compose/foundation/text/TextLinkScope;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_23
    check-cast v15, Landroidx/compose/foundation/text/TextLinkScope;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v6, v15

    goto :goto_15

    :cond_24
    const/4 v6, 0x0

    const v15, -0x2490056e

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v6, 0x0

    :goto_15
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgh;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v15

    if-eqz v15, :cond_28

    const v15, -0x248cff27

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v15, v1, 0x70

    if-ne v15, v12, :cond_25

    const/4 v12, 0x1

    goto :goto_16

    :cond_25
    const/4 v12, 0x0

    :goto_16
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v12, v15

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v12, :cond_26

    if-ne v15, v14, :cond_27

    :cond_26
    new-instance v15, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/4 v12, 0x7

    invoke-direct {v15, v12, v6, v2}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_27
    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_18

    :cond_28
    const v15, -0x248b8329

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v15, v1, 0x70

    if-ne v15, v12, :cond_29

    const/4 v12, 0x1

    goto :goto_17

    :cond_29
    const/4 v12, 0x0

    :goto_17
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v12, :cond_2a

    if-ne v15, v14, :cond_2b

    :cond_2a
    new-instance v15, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v12, 0x8

    invoke-direct {v15, v12, v2}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_18
    if-eqz v4, :cond_2c

    sget-object v12, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    const/16 v17, 0x0

    goto :goto_19

    :cond_2c
    new-instance v12, Lkotlin/Pair;

    const/4 v11, 0x0

    invoke-direct {v12, v11, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v17, v11

    :goto_19
    iget-object v11, v12, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v12, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    if-eqz v4, :cond_2e

    const v4, -0x2486b05e

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_2d

    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2d
    check-cast v4, Landroidx/compose/runtime/MutableState;

    move-object/from16 v24, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v4, v24

    goto :goto_1a

    :cond_2e
    const/4 v4, 0x0

    const v5, -0x2485598e

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v4, v17

    :goto_1a
    if-eqz p3, :cond_31

    const v5, -0x2483ed4d

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    move/from16 v17, v5

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v17, :cond_2f

    if-ne v5, v14, :cond_30

    :cond_2f
    new-instance v5, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;

    const/4 v7, 0x1

    invoke-direct {v5, v4, v7}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v17, v5

    goto :goto_1b

    :cond_31
    const/4 v7, 0x0

    const v5, -0x2482d64e

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1b
    invoke-interface {v15}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    and-int/lit16 v7, v1, 0x380

    move/from16 v24, v1

    const/16 v1, 0x100

    if-ne v7, v1, :cond_32

    const/4 v1, 0x1

    goto :goto_1c

    :cond_32
    const/4 v1, 0x0

    :goto_1c
    or-int/2addr v1, v15

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v1, :cond_33

    if-ne v7, v14, :cond_34

    :cond_33
    new-instance v7, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;

    const/4 v1, 0x1

    invoke-direct {v7, v6, v3, v1}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_34
    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object/from16 v18, p5

    move-object/from16 v19, v11

    move-object v1, v12

    move-object/from16 v22, v13

    move-object/from16 v20, v17

    const/4 v15, 0x1

    const v16, 0x7fffffff

    const/16 v17, 0x1

    const/16 v21, 0x0

    move-object/from16 v12, p4

    move-object v11, v5

    move-object v13, v7

    move-object v5, v14

    const/4 v7, 0x0

    const/4 v14, 0x1

    invoke-static/range {v10 .. v22}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    if-nez p3, :cond_37

    const v4, -0x24736513

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_35

    if-ne v10, v5, :cond_36

    :cond_35
    new-instance v10, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;

    const/4 v4, 0x1

    invoke-direct {v10, v6, v4}, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_36
    check-cast v10, Lkotlin/jvm/functions/Function0;

    new-instance v4, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    invoke-direct {v4, v10}, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1d

    :cond_37
    const v10, -0x2470b2b8

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_38

    if-ne v12, v5, :cond_39

    :cond_38
    new-instance v12, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;

    const/4 v10, 0x2

    invoke-direct {v12, v6, v10}, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_39
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_3a

    if-ne v13, v5, :cond_3b

    :cond_3a
    new-instance v13, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;

    const/4 v5, 0x4

    invoke-direct {v13, v4, v5}, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3b
    check-cast v13, Lkotlin/jvm/functions/Function0;

    new-instance v4, Landroidx/compose/foundation/text/TextMeasurePolicy;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v12, v13}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1d
    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v0, v11}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_3c

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1e

    :cond_3c
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1e
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v4, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v10, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v10, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v10, :cond_3d

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3e

    :cond_3d
    invoke-static {v5, v0, v5, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_3e
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v11, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez v6, :cond_3f

    const v4, -0x1e5fc1db

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    :goto_1f
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_20

    :cond_3f
    const v4, 0x200d6d5c

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v7, v0}, Landroidx/compose/foundation/text/TextLinkScope;->LinksComposables(ILandroidx/compose/runtime/ComposerImpl;)V

    goto :goto_1f

    :goto_20
    if-nez v1, :cond_40

    const v1, -0x1e5efb81

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    :goto_21
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v1, 0x1

    goto :goto_22

    :cond_40
    const v4, -0x1e5efb80

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v4, v24, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-static {v2, v1, v0, v4}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->InlineChildren(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_21

    :goto_22
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_23

    :cond_41
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_23
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_42

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;

    move-object/from16 v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_42
    return-void
.end method

.method public static final access$measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;
    .locals 9

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v3}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type androidx.compose.foundation.text.TextRangeLayoutModifier"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    iget-object v4, v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;->measurePolicy:Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;

    iget-object v5, v4, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/foundation/text/TextLinkScope;

    iget-object v4, v4, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v5, v5, Landroidx/compose/foundation/text/TextLinkScope;->textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v5, :cond_0

    sget-object v4, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;->INSTANCE:Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;

    new-instance v5, Landroidx/compose/runtime/OffsetApplier;

    invoke-direct {v5, v1, v1, v4}, Landroidx/compose/runtime/OffsetApplier;-><init>(IILkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_0
    invoke-static {v4, v5}, Landroidx/compose/foundation/text/TextLinkScope;->calculateVisibleLinkRange(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v4, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;->INSTANCE$1:Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;

    new-instance v5, Landroidx/compose/runtime/OffsetApplier;

    invoke-direct {v5, v1, v1, v4}, Landroidx/compose/runtime/OffsetApplier;-><init>(IILkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    iget v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-virtual {v5, v6, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidPath;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/ui/unit/IntRectKt;->roundToIntRect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v4

    iget v5, v4, Landroidx/compose/ui/unit/IntRect;->right:I

    iget v6, v4, Landroidx/compose/ui/unit/IntRect;->left:I

    sub-int/2addr v5, v6

    iget v6, v4, Landroidx/compose/ui/unit/IntRect;->bottom:I

    iget v7, v4, Landroidx/compose/ui/unit/IntRect;->top:I

    sub-int/2addr v6, v7

    new-instance v7, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v8, 0x9

    invoke-direct {v7, v8, v4}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    new-instance v4, Landroidx/compose/runtime/OffsetApplier;

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/runtime/OffsetApplier;-><init>(IILkotlin/jvm/functions/Function0;)V

    move-object v5, v4

    :goto_1
    iget v4, v5, Landroidx/compose/runtime/OffsetApplier;->offset:I

    iget v6, v5, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    invoke-static {v4, v4, v6, v6}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    iget-object v5, v5, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Lambda;

    invoke-direct {v4, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static childForClassOrPackage$default(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassOrPackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;I)Landroidx/media3/extractor/text/pgs/PgsParser;
    .locals 3

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1}, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    if-eqz p2, :cond_1

    new-instance v1, Landroidx/media3/common/util/GlProgram;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/media3/common/util/GlProgram;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaTypeParameterListOwner;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    :goto_0
    new-instance p0, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {p0, v0, v1, p3}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    return-object p0
.end method

.method public static final copyWithNewDefaultTypeQualifiers(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Landroidx/media3/extractor/text/pgs/PgsParser;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    sget-object v3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v4, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;

    const/16 v5, 0xc

    invoke-direct {v4, v5, p0, p1}, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    return-object v0
.end method

.method public static final textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 13

    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v3, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
