.class public abstract Landroidx/compose/foundation/text/ClickableTextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ClickableText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 17

    move-object/from16 v2, p1

    move-object/from16 v8, p7

    move-object/from16 v15, p8

    move/from16 v0, p9

    const v1, -0xeb2f629

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v0, 0x6

    move-object/from16 v9, p0

    if-nez v1, :cond_1

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    and-int/lit8 v3, v0, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v0, 0x180

    move-object/from16 v11, p2

    if-nez v3, :cond_5

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v1, v3

    :cond_5
    const v3, 0x1b6c00

    or-int/2addr v1, v3

    const/high16 v3, 0xc00000

    and-int/2addr v3, v0

    const/high16 v4, 0x800000

    if-nez v3, :cond_7

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_4

    :cond_6
    const/high16 v3, 0x400000

    :goto_4
    or-int/2addr v1, v3

    :cond_7
    const v3, 0x492493

    and-int/2addr v3, v1

    const v5, 0x492492

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v5, :cond_8

    move v3, v7

    goto :goto_5

    :cond_8
    move v3, v6

    :goto_5
    and-int/lit8 v5, v1, 0x1

    invoke-virtual {v15, v5, v3}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Landroidx/compose/foundation/text/TextLinkScope$1;->INSTANCE$1:Landroidx/compose/foundation/text/TextLinkScope$1;

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v5, v10, :cond_9

    const/4 v5, 0x0

    invoke-static {v5}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v5, Landroidx/compose/runtime/MutableState;

    const/high16 v12, 0x1c00000

    and-int/2addr v12, v1

    if-ne v12, v4, :cond_a

    move v4, v7

    goto :goto_6

    :cond_a
    move v4, v6

    :goto_6
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v4, :cond_b

    if-ne v12, v10, :cond_c

    :cond_b
    new-instance v12, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pressIndicator$1$1;

    invoke-direct {v12, v5, v8}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pressIndicator$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v4, v8, v12}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/high16 v12, 0x380000

    and-int v13, v1, v12

    const/high16 v14, 0x100000

    if-ne v13, v14, :cond_d

    move v6, v7

    :cond_d
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v6, :cond_e

    if-ne v13, v10, :cond_f

    :cond_e
    new-instance v13, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;

    const/4 v6, 0x2

    invoke-direct {v13, v5, v6}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v13, Lkotlin/jvm/functions/Function1;

    const v5, 0xe38e

    and-int/2addr v5, v1

    const/high16 v6, 0x70000

    shl-int/lit8 v10, v1, 0x6

    and-int/2addr v6, v10

    or-int/2addr v5, v6

    shl-int/lit8 v1, v1, 0x3

    and-int/2addr v1, v12

    or-int v16, v5, v1

    move-object v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v4

    invoke-static/range {v9 .. v16}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;ILjava/util/Map;Landroidx/compose/runtime/ComposerImpl;I)V

    const v1, 0x7fffffff

    move v6, v1

    move v4, v7

    move v5, v4

    move-object v7, v3

    goto :goto_7

    :cond_10
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    :goto_7
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_11

    new-instance v0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method

.method public static final resolveAnnotations(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationsOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;Z)V

    return-object v0
.end method
