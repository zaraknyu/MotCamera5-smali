.class public final Landroidx/compose/foundation/text/TextLinkScope;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final annotators:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public text:Landroidx/compose/ui/text/AnnotatedString;

.field public final textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Landroidx/compose/foundation/text/TextLinkScope$1;->INSTANCE:Landroidx/compose/foundation/text/TextLinkScope$1;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Builder;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    const/high16 v9, -0x80000000

    invoke-virtual {v8, v9}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->toRange(I)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/compose/foundation/text/TextLinkScope$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Range;

    new-instance v13, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    iget-object v14, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    iget v15, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v6, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iget-object v12, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    invoke-direct {v13, v15, v6, v14, v12}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    iput-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->annotators:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-void
.end method

.method public static calculateVisibleLinkRange(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;
    .locals 3

    iget-object p1, p1, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget v0, p1, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/MultiParagraph;->requireLineIndexInRange(I)V

    iget-object p1, p1, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/text/RegexKt;->findParagraphByLineIndex(Ljava/util/List;I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v1, p1, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    iget v2, p1, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    sub-int/2addr v0, v2

    iget-object v1, v1, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    move-result v0

    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    add-int/2addr v0, p1

    iget p1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0xb

    invoke-static {p0, v1, p1, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;->copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/ParagraphStyle;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final LinksComposables(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x44d294da

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    or-int/2addr v3, v1

    and-int/lit8 v6, v3, 0x3

    const/4 v8, 0x0

    if-eq v6, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    and-int/lit8 v9, v3, 0x1

    invoke-virtual {v2, v9, v6}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalUriHandler:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/platform/AndroidUriHandler;

    iget-object v9, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v10, v9, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/compose/ui/text/AnnotatedString;->getLinkAnnotations(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v10

    move v11, v8

    :goto_2
    if-ge v11, v10, :cond_14

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v13, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget-object v14, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    iget v15, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-eq v13, v15, :cond_12

    const v13, 0x529dd428

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v13, v15, :cond_2

    new-instance v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v13}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/16 v16, 0x4

    new-instance v4, Landroidx/compose/runtime/Latch$await$2$2;

    move/from16 v17, v5

    const/16 v5, 0x16

    invoke-direct {v4, v5, v0, v12}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v5, v4}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/text/TextLinkScope$1;->INSTANCE$3:Landroidx/compose/foundation/text/TextLinkScope$1;

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v5, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    const/16 v18, 0x1

    new-instance v7, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v12}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v5, v7}, Landroidx/compose/foundation/text/TextRangeLayoutModifier;-><init>(Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;)V

    invoke-interface {v4, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4, v13}, Landroidx/compose/foundation/ImageKt;->hoverable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerIcon;->Companion:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerId;->pointerIconHand:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    new-instance v7, Landroidx/compose/ui/input/pointer/PointerHoverIconModifierElement;

    invoke-direct {v7, v5}, Landroidx/compose/ui/input/pointer/PointerHoverIconModifierElement;-><init>(Landroidx/compose/ui/input/pointer/AndroidPointerIconType;)V

    invoke-interface {v4, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_3

    if-ne v7, v15, :cond_4

    :cond_3
    new-instance v7, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    invoke-direct {v7, v0, v12, v6}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/platform/AndroidUriHandler;)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v13, v7}, Landroidx/compose/foundation/ImageKt;->combinedClickable-auXiCPI$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4, v2, v8}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    check-cast v14, Landroidx/compose/ui/text/LinkAnnotation;

    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-object v5, v4, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    if-nez v5, :cond_5

    iget-object v5, v4, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    if-nez v5, :cond_5

    iget-object v5, v4, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    if-nez v5, :cond_5

    iget-object v4, v4, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    if-nez v4, :cond_5

    goto/16 :goto_9

    :cond_5
    const v4, 0x52aa638f

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_6

    new-instance v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    invoke-direct {v4, v13}, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x0

    if-ne v5, v15, :cond_7

    new-instance v5, Landroidx/compose/foundation/text/TextLinkScope$LinksComposables$1$3$1;

    invoke-direct {v5, v4, v7}, Landroidx/compose/foundation/text/TextLinkScope$LinksComposables$1$3$1;-><init>(Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v5, Lkotlin/jvm/functions/Function2;

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2, v13, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v5, v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    iget-object v13, v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    move/from16 v5, v18

    goto :goto_3

    :cond_8
    move v5, v8

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    move/from16 v5, v18

    goto :goto_4

    :cond_9
    move v5, v8

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_a

    move/from16 v5, v18

    goto :goto_5

    :cond_a
    move v5, v8

    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, v5, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 v22, v5

    goto :goto_6

    :cond_b
    move-object/from16 v22, v7

    :goto_6
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, v5, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 v23, v5

    goto :goto_7

    :cond_c
    move-object/from16 v23, v7

    :goto_7
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, v5, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 v24, v5

    goto :goto_8

    :cond_d
    move-object/from16 v24, v7

    :goto_8
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v7, v5, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    :cond_e
    move-object/from16 v25, v7

    filled-new-array/range {v19 .. v25}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v7, v13

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v7, :cond_f

    if-ne v13, v15, :cond_10

    :cond_f
    new-instance v13, Landroidx/compose/runtime/Latch$await$2$2;

    invoke-direct {v13, v0, v12, v4}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;)V

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    check-cast v13, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v4, v3, 0x6

    and-int/lit16 v4, v4, 0x380

    invoke-virtual {v0, v5, v13, v2, v4}, Landroidx/compose/foundation/text/TextLinkScope;->StyleAnnotation([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_a

    :cond_11
    :goto_9
    const v4, 0x52c9580e

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_a
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_b

    :cond_12
    move/from16 v17, v5

    const/16 v16, 0x4

    const/16 v18, 0x1

    const v4, 0x52c98e4e

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v17

    goto/16 :goto_2

    :cond_13
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :cond_14
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_15

    new-instance v3, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/4 v4, 0x7

    invoke-direct {v3, v1, v4, v0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(IILjava/lang/Object;)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public final StyleAnnotation([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 6

    const v0, -0x7c28da43

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x30

    const/16 v1, 0x20

    if-nez v0, :cond_1

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit16 v2, p4, 0x180

    if-nez v2, :cond_3

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    :cond_3
    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const v4, -0x18d4e0f7

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    array-length v2, p1

    move v3, v5

    :goto_3
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    goto :goto_4

    :cond_4
    move v4, v5

    :goto_4
    or-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit8 v2, v0, 0xe

    if-nez v2, :cond_6

    or-int/lit8 v0, v0, 0x2

    :cond_6
    and-int/lit16 v2, v0, 0x93

    const/16 v3, 0x92

    const/4 v4, 0x1

    if-eq v2, v3, :cond_7

    move v2, v4

    goto :goto_5

    :cond_7
    move v2, v5

    :goto_5
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    iget-object v2, v2, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v0, v0, 0x70

    if-ne v0, v1, :cond_8

    move v5, v4

    :cond_8
    or-int v0, v3, v5

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_9

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v0, :cond_a

    :cond_9
    new-instance v1, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p2, v0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v1, p3}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_c

    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
