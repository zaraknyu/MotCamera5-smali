.class public abstract Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UnmergedConfigComparator:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

.field public static final semanticComparators:[Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/Comparator;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-nez v2, :cond_0

    sget-object v3, Landroidx/compose/ui/platform/LtrBoundsComparator;->INSTANCE$1:Landroidx/compose/ui/platform/LtrBoundsComparator;

    goto :goto_1

    :cond_0
    sget-object v3, Landroidx/compose/ui/platform/LtrBoundsComparator;->INSTANCE:Landroidx/compose/ui/platform/LtrBoundsComparator;

    :goto_1
    new-instance v4, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    invoke-direct {v4, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(Ljava/util/Comparator;)V

    new-instance v3, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(ILjava/lang/Object;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sput-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->semanticComparators:[Ljava/util/Comparator;

    sget-object v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->INSTANCE$1:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->UnmergedConfigComparator:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    return-void
.end method

.method public static final access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final geometryDepthFirstSearch(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Landroidx/collection/MutableIntObjectMap;Landroidx/collection/IntObjectMap;Landroid/content/res/Resources;)V
    .locals 4

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    iget v1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    iget-object v2, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p3, v1}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x7

    if-eqz v2, :cond_3

    invoke-static {v3, p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->subtreeSortedByGeometryGrouping(ZLjava/util/List;Landroidx/collection/IntObjectMap;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {v3, p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-static {v2, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->geometryDepthFirstSearch(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Landroidx/collection/MutableIntObjectMap;Landroidx/collection/IntObjectMap;Landroid/content/res/Resources;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static final getInfoIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Landroidx/compose/ui/state/ToggleableState;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {p0, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    check-cast v2, Landroidx/compose/ui/semantics/Role;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {p0, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget p0, v2, Landroidx/compose/ui/semantics/Role;->value:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    return v3

    :cond_6
    :goto_3
    return v0
.end method

.method public static final getInfoStateDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    iget-object v3, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v3, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v2

    :cond_1
    check-cast v4, Landroidx/compose/ui/state/ToggleableState;

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v3, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v2

    :cond_2
    check-cast v5, Landroidx/compose/ui/semantics/Role;

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v7, 0x2

    if-eqz v4, :cond_6

    if-eq v4, v6, :cond_4

    if-eq v4, v7, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_8

    const v0, 0x7f12021a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    iget v4, v5, Landroidx/compose/ui/semantics/Role;->value:I

    if-ne v4, v7, :cond_8

    if-nez v0, :cond_8

    const v0, 0x7f120516

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    iget v4, v5, Landroidx/compose/ui/semantics/Role;->value:I

    if-ne v4, v7, :cond_8

    if-nez v0, :cond_8

    const v0, 0x7f120517

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_0
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v3, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    move-object v4, v2

    :cond_9
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    iget v5, v5, Landroidx/compose/ui/semantics/Role;->value:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_b

    goto :goto_2

    :cond_b
    :goto_1
    if-nez v0, :cond_d

    if-eqz v4, :cond_c

    const v0, 0x7f1203f6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    const v0, 0x7f120334

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_d
    :goto_2
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v3, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    move-object v4, v2

    :cond_e
    check-cast v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    if-eqz v4, :cond_15

    sget-object v5, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    if-eq v4, v5, :cond_14

    if-nez v0, :cond_15

    iget-object v0, v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatRange;

    iget v4, v0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    iget v0, v0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    sub-float v5, v4, v0

    const/4 v7, 0x0

    cmpg-float v5, v5, v7

    if-nez v5, :cond_f

    move v5, v7

    goto :goto_3

    :cond_f
    sub-float v5, v7, v0

    sub-float/2addr v4, v0

    div-float/2addr v5, v4

    :goto_3
    cmpg-float v0, v5, v7

    if-gez v0, :cond_10

    move v5, v7

    :cond_10
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v4, v5, v0

    if-lez v4, :cond_11

    move v5, v0

    :cond_11
    cmpg-float v4, v5, v7

    if-nez v4, :cond_12

    const/4 v0, 0x0

    goto :goto_4

    :cond_12
    cmpg-float v0, v5, v0

    const/16 v4, 0x64

    if-nez v0, :cond_13

    move v0, v4

    goto :goto_4

    :cond_13
    int-to-float v0, v4

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v4, 0x63

    invoke-static {v0, v6, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f120594

    invoke-virtual {p1, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_14
    if-nez v0, :cond_15

    const v0, 0x7f120219

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_15
    :goto_5
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v3, v4}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsNode;

    iget-object v3, p0, Landroidx/compose/ui/semantics/SemanticsNode;->outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v0, v3, v6, p0, v1}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    move-object v0, v2

    :cond_16
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_17
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    move-object v0, v2

    :cond_18
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_19
    invoke-virtual {p0, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1a

    move-object p0, v2

    :cond_1a
    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_1b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1c

    :cond_1b
    const p0, 0x7f120515

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1c
    move-object v0, v2

    :cond_1d
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final getInfoText(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {p0, v1}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static final isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getInfoText(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getInfoStateDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getInfoIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v0

    :goto_1
    invoke-static {p0}, Landroidx/compose/ui/platform/InvertMatrixKt;->isHidden(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-boolean v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->isUnmergedLeafNode$ui_release()Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    :cond_4
    return v0

    :cond_5
    return v2
.end method

.method public static final subtreeSortedByGeometryGrouping(ZLjava/util/List;Landroidx/collection/IntObjectMap;Landroid/content/res/Resources;)Ljava/util/ArrayList;
    .locals 17

    move-object/from16 v0, p3

    sget-object v1, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    move-object/from16 v6, p1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsNode;

    move-object/from16 v8, p2

    invoke-static {v7, v2, v1, v8, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->geometryDepthFirstSearch(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Landroidx/collection/MutableIntObjectMap;Landroidx/collection/IntObjectMap;Landroid/content/res/Resources;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_5

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/semantics/SemanticsNode;

    if-eqz v7, :cond_4

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    iget v9, v9, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    move-result-object v10

    iget v10, v10, Landroidx/compose/ui/geometry/Rect;->bottom:F

    cmpl-float v11, v9, v10

    if-ltz v11, :cond_1

    move v11, v6

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v12

    if-ltz v12, :cond_4

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/Pair;

    iget-object v14, v14, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/geometry/Rect;

    iget v15, v14, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v4, v14, Landroidx/compose/ui/geometry/Rect;->bottom:F

    cmpl-float v16, v15, v4

    if-ltz v16, :cond_2

    move/from16 v16, v6

    goto :goto_4

    :cond_2
    const/16 v16, 0x0

    :goto_4
    if-nez v11, :cond_3

    if-nez v16, :cond_3

    invoke-static {v9, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_3

    new-instance v11, Landroidx/compose/ui/geometry/Rect;

    iget v12, v14, Landroidx/compose/ui/geometry/Rect;->left:F

    const/4 v15, 0x0

    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iget v15, v14, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v15, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget v14, v14, Landroidx/compose/ui/geometry/Rect;->right:F

    const/high16 v15, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-direct {v11, v12, v9, v14, v4}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    new-instance v4, Lkotlin/Pair;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/Pair;

    iget-object v9, v9, Lkotlin/Pair;->second:Ljava/lang/Object;

    invoke-direct {v4, v11, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v13, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    iget-object v4, v4, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    if-eq v13, v12, :cond_4

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    new-instance v9, Lkotlin/Pair;

    filled-new-array {v8}, [Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v9, v4, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    if-eq v7, v5, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_5
    sget-object v2, Landroidx/compose/ui/platform/LtrBoundsComparator;->INSTANCE$2:Landroidx/compose/ui/platform/LtrBoundsComparator;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->semanticComparators:[Ljava/util/Comparator;

    xor-int/lit8 v5, p0, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v5, :cond_6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/Pair;

    iget-object v9, v8, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-static {v9, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v8, v8, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_6
    new-instance v3, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    sget-object v4, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->UnmergedConfigComparator:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    invoke-direct {v3, v6, v4}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    :goto_7
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-gt v4, v3, :cond_9

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNode;

    iget v3, v3, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v1, v3}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-static {v5, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_7
    add-int/lit8 v4, v4, 0x1

    :goto_8
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_7

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    return-object v2
.end method
