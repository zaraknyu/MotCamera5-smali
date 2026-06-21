.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzke;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final HighlightedText(Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v0, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    const v2, -0x1d599236

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v11

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    and-int/lit8 v4, v11, 0x30

    move-object/from16 v12, p1

    if-nez v4, :cond_3

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_3
    and-int/lit16 v4, v11, 0x180

    if-nez v4, :cond_5

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v2, v4

    :cond_5
    and-int/lit16 v4, v11, 0xc00

    move-object/from16 v9, p3

    if-nez v4, :cond_7

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_4

    :cond_6
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v2, v4

    :cond_7
    and-int/lit16 v4, v11, 0x6000

    if-nez v4, :cond_9

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x4000

    goto :goto_5

    :cond_8
    const/16 v4, 0x2000

    :goto_5
    or-int/2addr v2, v4

    :cond_9
    move v13, v2

    and-int/lit16 v2, v13, 0x2493

    const/16 v4, 0x2492

    if-ne v2, v4, :cond_b

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_9

    :cond_b
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Builder;

    invoke-direct {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    move-result v5

    :try_start_0
    iget-object v6, v4, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v4

    iput-object v4, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Builder;

    invoke-direct {v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lkotlin/ranges/IntRange;

    const/4 v4, 0x0

    const/4 v15, 0x1

    invoke-direct {v2, v4, v4, v15}, Lkotlin/ranges/IntProgression;-><init>(III)V

    iput-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v16, v2

    new-instance v2, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;

    move v11, v6

    move-object/from16 v1, v16

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/text/AnnotatedString$Builder;Landroidx/compose/ui/text/SpanStyle;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Landroidx/compose/ui/text/SpanStyle;)V

    invoke-static {v1, v11, v15, v2}, Lkotlin/text/StringsKt;->windowed(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v9, p3

    move/from16 v11, p6

    goto :goto_8

    :cond_e
    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    shr-int/lit8 v2, v13, 0x9

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_f

    new-instance v0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object v2, v12

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    throw v0
.end method

.method public static final MultipleClickableText(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/Map;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 8

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x432365d2

    invoke-virtual {p5, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    or-int/lit8 v0, p6, 0x6

    and-int/lit8 v1, p6, 0x30

    if-nez v1, :cond_1

    invoke-virtual {p5, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/2addr v0, v1

    :cond_1
    and-int/lit16 v1, p6, 0x180

    if-nez v1, :cond_3

    invoke-virtual {p5, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_1

    :cond_2
    const/16 v1, 0x80

    :goto_1
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p6, 0xc00

    if-nez v1, :cond_5

    invoke-virtual {p5, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x800

    goto :goto_2

    :cond_4
    const/16 v1, 0x400

    :goto_2
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, p6, 0x6000

    if-nez v1, :cond_7

    invoke-virtual {p5, p4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x4000

    goto :goto_3

    :cond_6
    const/16 v1, 0x2000

    :goto_3
    or-int/2addr v0, v1

    :cond_7
    and-int/lit16 v1, v0, 0x2493

    const/16 v2, 0x2492

    if-ne v1, v2, :cond_9

    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, p1

    move-object v6, p5

    move-object p5, p4

    move-object p4, p3

    :goto_4
    move-object p1, p0

    goto :goto_6

    :cond_9
    :goto_5
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    new-instance p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$SupportingPane$3;

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$SupportingPane$3;-><init>(Ljava/util/Map;)V

    const v1, -0x661dc7d6

    invoke-static {v1, p0, p5}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    shr-int/lit8 p0, v0, 0x3

    and-int/lit8 v0, p0, 0xe

    or-int/lit16 v0, v0, 0x6000

    and-int/lit16 v1, p0, 0x380

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0x1c00

    or-int v7, v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzke;->HighlightedText(Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    move-object p4, v3

    move-object p5, v4

    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_4

    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;

    move-object p3, p2

    move-object p2, v1

    invoke-direct/range {p0 .. p6}, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/Map;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;I)V

    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method
