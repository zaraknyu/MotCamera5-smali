.class public final Landroidx/compose/runtime/AnchoredGroupPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final InternalDisposableEffectScope:Landroidx/compose/runtime/DisposableEffectScope;

.field public static final PendingApplyNoModifications:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/AnchoredGroupPath;->PendingApplyNoModifications:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/AnchoredGroupPath;->InternalDisposableEffectScope:Landroidx/compose/runtime/DisposableEffectScope;

    return-void
.end method

.method public static final CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 11

    const v0, -0x50862cb8

    .line 36
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    iget-object v0, p2, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 37
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    const/16 v2, 0xc9

    .line 38
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->provider:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    .line 39
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.ValueHolder<kotlin.Any?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/ValueHolder;

    .line 40
    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 41
    invoke-virtual {v3, p0, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->updatedStateOf$runtime_release(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/ValueHolder;

    move-result-object v5

    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 44
    :cond_1
    iget-boolean v6, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    .line 45
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    if-nez v2, :cond_2

    .line 46
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 47
    :cond_2
    check-cast v1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 48
    iget-object v2, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->node:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v2, v6, v8, v3, v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;->put(IILjava/lang/Object;Ljava/lang/Object;)Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 50
    :cond_3
    new-instance v3, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 51
    iget-object v5, v2, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 52
    iget v1, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->size:I

    .line 53
    iget v2, v2, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v1, v2

    .line 54
    invoke-direct {v3, v5, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;I)V

    move-object v1, v3

    .line 55
    :cond_4
    :goto_1
    iput-boolean v7, p2, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    :cond_5
    move v2, v8

    goto :goto_5

    .line 56
    :cond_6
    iget-object v6, p2, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 57
    iget v9, v6, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 58
    iget-object v10, v6, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 59
    invoke-virtual {v6, v10, v9}, Landroidx/compose/runtime/SlotReader;->aux([II)Ljava/lang/Object;

    move-result-object v6

    .line 60
    const-string v9, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 61
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-eqz v9, :cond_7

    if-nez v2, :cond_8

    .line 62
    :cond_7
    iget-boolean v9, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    if-nez v9, :cond_b

    .line 63
    move-object v9, v1

    check-cast v9, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    .line 64
    iget-boolean v2, p2, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v2, :cond_9

    goto :goto_2

    .line 65
    :cond_9
    iget-boolean v2, p2, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    :goto_2
    move-object v1, v6

    goto :goto_4

    .line 66
    :cond_b
    :goto_3
    check-cast v1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 67
    iget-object v2, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->node:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v2, v9, v8, v3, v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;->put(IILjava/lang/Object;Ljava/lang/Object;)Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_4

    .line 69
    :cond_c
    new-instance v3, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 70
    iget-object v5, v2, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 71
    iget v1, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->size:I

    .line 72
    iget v2, v2, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v1, v2

    .line 73
    invoke-direct {v3, v5, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;I)V

    move-object v1, v3

    .line 74
    :goto_4
    iget-boolean v2, p2, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v2, :cond_d

    if-eq v6, v1, :cond_5

    :cond_d
    move v2, v7

    :goto_5
    if-eqz v2, :cond_e

    .line 75
    iget-boolean v3, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_e

    .line 76
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 77
    :cond_e
    iget-boolean v3, p2, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 78
    iput-boolean v2, p2, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 79
    iput-object v1, p2, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    const/16 v2, 0xca

    .line 80
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2, v2, v8, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    shr-int/lit8 v1, p3, 0x3

    and-int/lit8 v1, v1, 0xe

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 83
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 84
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    move v7, v8

    :goto_6
    iput-boolean v7, p2, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 85
    iput-object v4, p2, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 86
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_10

    new-instance v0, Landroidx/compose/foundation/CanvasKt$Canvas$1;

    const/4 v1, 0x5

    invoke-direct {v0, p3, v1, p0, p1}, Landroidx/compose/foundation/CanvasKt$Canvas$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method

.method public static final CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 8

    const v0, -0x52e5dee3

    .line 1
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    iget-object v0, p2, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    const/16 v2, 0xc9

    .line 3
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->provider:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    .line 4
    iget-boolean v2, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 5
    sget-object v2, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->Empty:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 6
    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateCompositionMap([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v2

    .line 7
    invoke-virtual {p2, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v1

    .line 8
    iput-boolean v3, p2, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    :cond_0
    :goto_0
    move v2, v4

    goto :goto_2

    .line 9
    :cond_1
    iget-object v2, p2, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 10
    iget v5, v2, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 11
    invoke-virtual {v2, v5, v4}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object v2

    .line 12
    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 13
    iget-object v6, p2, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 14
    iget v7, v6, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 15
    invoke-virtual {v6, v7, v3}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object v6

    .line 16
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 17
    invoke-static {p0, v1, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->updateCompositionMap([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v5

    .line 18
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p2, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v7, :cond_3

    .line 19
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    iget v1, p2, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v5, p2, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v5

    add-int/2addr v5, v1

    iput v5, p2, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    move-object v1, v2

    goto :goto_0

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {p2, v1, v5}, Landroidx/compose/runtime/ComposerImpl;->updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v1

    .line 22
    iget-boolean v5, p2, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v5, :cond_4

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    .line 23
    iget-boolean v5, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_5

    .line 24
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 25
    :cond_5
    iget-boolean v5, p2, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 26
    iput-boolean v2, p2, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 27
    iput-object v1, p2, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    const/16 v2, 0xca

    .line 28
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2, v2, v4, v5, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    shr-int/lit8 v1, p3, 0x3

    and-int/lit8 v1, v1, 0xe

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 31
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    iput-boolean v3, p2, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    const/4 v0, 0x0

    .line 33
    iput-object v0, p2, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 34
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Landroidx/compose/foundation/CanvasKt$Canvas$1;

    const/4 v1, 0x4

    invoke-direct {v0, p3, v1, p0, p1}, Landroidx/compose/foundation/CanvasKt$Canvas$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p0

    .line 2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, p0, :cond_1

    .line 4
    :cond_0
    new-instance v0, Landroidx/compose/runtime/DisposableEffectImpl;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/DisposableEffectImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 5
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 6
    :cond_1
    check-cast v0, Landroidx/compose/runtime/DisposableEffectImpl;

    return-void
.end method

.method public static final DisposableEffect([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V
    .locals 4

    .line 7
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 8
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p0

    if-nez v2, :cond_2

    .line 10
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 11
    :cond_2
    :goto_1
    new-instance p0, Landroidx/compose/runtime/DisposableEffectImpl;

    invoke-direct {p0, p1}, Landroidx/compose/runtime/DisposableEffectImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 12
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 2
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, p1, :cond_1

    .line 6
    :cond_0
    new-instance v1, Landroidx/compose/runtime/LaunchedEffectImpl;

    invoke-direct {v1, v0, p2}, Landroidx/compose/runtime/LaunchedEffectImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    .line 7
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 8
    :cond_1
    check-cast v1, Landroidx/compose/runtime/LaunchedEffectImpl;

    return-void
.end method

.method public static final LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V
    .locals 1

    .line 9
    iget-object v0, p4, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 11
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p4, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p4, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    .line 12
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    .line 13
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p1, p0, :cond_1

    .line 14
    :cond_0
    new-instance p1, Landroidx/compose/runtime/LaunchedEffectImpl;

    invoke-direct {p1, v0, p3}, Landroidx/compose/runtime/LaunchedEffectImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    .line 15
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 16
    :cond_1
    check-cast p1, Landroidx/compose/runtime/LaunchedEffectImpl;

    return-void
.end method

.method public static final LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V
    .locals 1

    .line 17
    iget-object v0, p3, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 18
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 19
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    .line 20
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    .line 21
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p1, p0, :cond_1

    .line 22
    :cond_0
    new-instance p1, Landroidx/compose/runtime/LaunchedEffectImpl;

    invoke-direct {p1, v0, p2}, Landroidx/compose/runtime/LaunchedEffectImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    .line 23
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 24
    :cond_1
    check-cast p1, Landroidx/compose/runtime/LaunchedEffectImpl;

    return-void
.end method

.method public static final SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;)V
    .locals 1

    iget-object p1, p1, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object p1, p1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object p1, p1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/changelist/Operation$SideEffect;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$SideEffect;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableIntList;I)V
    .locals 3

    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->add(I)V

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v2

    if-le p1, v2, :cond_2

    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableIntList;->set(II)V

    return-void
.end method

.method public static adoptAnchoredScopes$runtime_release(Landroidx/compose/runtime/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/CompositionImpl;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v4, v3}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v2

    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v2

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v2, v3, v2

    goto :goto_1

    :cond_0
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    :goto_1
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    iput-object p2, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/CompositionImpl;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;
    .locals 7

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v2, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    new-instance v3, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;

    invoke-direct {v3, v1, p0, v4}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_2

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_3

    if-ne v6, v5, :cond_4

    :cond_3
    new-instance v6, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$3$1;

    invoke-direct {v6, v3, v2, v4}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$3$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v1, v6, p1}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V

    return-object v2
.end method

.method public static final createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    new-instance v0, Landroidx/compose/runtime/RememberedCoroutineScope;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/RememberedCoroutineScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method

.method public static final derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;
    .locals 3

    sget-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateObservers:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    invoke-direct {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/MenuHostHelper;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static final derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->calculationBlockNestedLevel:Landroidx/core/view/MenuHostHelper;

    .line 2
    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public static final derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;
    .locals 2

    .line 3
    sget-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->calculationBlockNestedLevel:Landroidx/core/view/MenuHostHelper;

    .line 4
    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public static final getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/NeverEqualPolicy;->$$INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/MonotonicFrameClock;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    add-int v4, v1, v3

    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v5

    iget-object v6, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v6

    sub-int v7, v6, v5

    const/4 v9, 0x1

    if-ltz v1, :cond_0

    iget-object v10, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x5

    add-int/2addr v11, v9

    aget v10, v10, v11

    const/high16 v11, 0xc000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    iget v11, v2, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v2, v7, v11}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    iget v11, v0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ge v11, v4, :cond_1

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    :cond_1
    iget v11, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    if-ge v11, v6, :cond_2

    invoke-virtual {v0, v6, v4}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    :cond_2
    iget-object v6, v2, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v11, v2, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v12, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    mul-int/lit8 v13, v11, 0x5

    mul-int/lit8 v14, v1, 0x5

    mul-int/lit8 v15, v4, 0x5

    invoke-static {v13, v14, v15, v12, v6}, Lkotlin/collections/ArraysKt;->copyInto(III[I[I)V

    iget-object v12, v2, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v14, v2, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget-object v15, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-static {v15, v5, v12, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v15, v2, Landroidx/compose/runtime/SlotWriter;->parent:I

    add-int/lit8 v16, v13, 0x2

    aput v15, v6, v16

    sub-int v16, v11, v1

    add-int v8, v11, v3

    invoke-virtual {v2, v6, v11}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v18

    sub-int v18, v14, v18

    move/from16 v19, v9

    iget v9, v2, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    move/from16 v20, v9

    iget v9, v2, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    array-length v12, v12

    move/from16 v21, v10

    move/from16 v10, v20

    move/from16 v20, v13

    move v13, v11

    :goto_1
    if-ge v13, v8, :cond_6

    if-eq v13, v11, :cond_3

    mul-int/lit8 v22, v13, 0x5

    add-int/lit8 v22, v22, 0x2

    aget v23, v6, v22

    add-int v23, v23, v16

    aput v23, v6, v22

    :cond_3
    invoke-virtual {v2, v6, v13}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v22

    move-object/from16 v23, v6

    add-int v6, v22, v18

    if-ge v10, v13, :cond_4

    move/from16 v22, v11

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    move/from16 v22, v11

    iget v11, v2, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    :goto_2
    invoke-static {v6, v11, v9, v12}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v6

    mul-int/lit8 v11, v13, 0x5

    add-int/lit8 v11, v11, 0x4

    aput v6, v23, v11

    if-ne v13, v10, :cond_5

    add-int/lit8 v10, v10, 0x1

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v22

    move-object/from16 v6, v23

    goto :goto_1

    :cond_6
    move-object/from16 v23, v6

    iput v10, v2, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    iget-object v6, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v9

    invoke-static {v6, v1, v9}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v6

    iget-object v9, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v10

    invoke-static {v9, v4, v10}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v4

    if-ge v6, v4, :cond_8

    iget-object v9, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    new-instance v10, Ljava/util/ArrayList;

    sub-int v11, v4, v6

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v6

    :goto_3
    if-ge v11, v4, :cond_7

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/Anchor;

    iget v13, v12, Landroidx/compose/runtime/Anchor;->location:I

    add-int v13, v13, v16

    iput v13, v12, Landroidx/compose/runtime/Anchor;->location:I

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    iget-object v11, v2, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    iget v12, v2, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v13

    invoke-static {v11, v12, v13}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v11

    iget-object v12, v2, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v12, v11, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v9, v6, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_8
    sget-object v10, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_4
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iget-object v6, v2, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_9

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/Anchor;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/GroupSourceInformation;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    iget v4, v2, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object v4, v2, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v4, :cond_a

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/SlotWriter;->tryAnchor$runtime_release(I)Landroidx/compose/runtime/Anchor;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/GroupSourceInformation;

    :cond_a
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v0, v4, v1}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v4

    if-nez p5, :cond_b

    const/16 v17, 0x0

    goto :goto_7

    :cond_b
    if-eqz p3, :cond_f

    if-ltz v4, :cond_c

    move/from16 v17, v19

    goto :goto_6

    :cond_c
    const/16 v17, 0x0

    :goto_6
    if-eqz v17, :cond_d

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    :cond_d
    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    move-result v1

    if-eqz v17, :cond_e

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->endGroup()V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->endGroup()V

    :cond_e
    move/from16 v17, v1

    goto :goto_7

    :cond_f
    invoke-virtual {v0, v1, v3}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v7, v1}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    move/from16 v17, v3

    :goto_7
    if-eqz v17, :cond_10

    const-string v0, "Unexpectedly removed anchors"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_10
    iget v0, v2, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    add-int/lit8 v13, v20, 0x1

    aget v1, v23, v13

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, v1

    if-eqz v3, :cond_11

    move/from16 v9, v19

    goto :goto_8

    :cond_11
    const v3, 0x3ffffff

    and-int v9, v1, v3

    :goto_8
    add-int/2addr v0, v9

    iput v0, v2, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    if-eqz p4, :cond_12

    iput v8, v2, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr v14, v7

    iput v14, v2, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    :cond_12
    if-eqz v21, :cond_13

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    :cond_13
    return-object v10
.end method

.method public static mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;
    .locals 2

    sget-object v0, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {v1, p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    return-object v1
.end method

.method public static final read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->getDefaultValueHolder$runtime_release()Landroidx/compose/runtime/ValueHolder;

    move-result-object v0

    :cond_0
    check-cast v0, Landroidx/compose/runtime/ValueHolder;

    invoke-interface {v0, p0}, Landroidx/compose/runtime/ValueHolder;->readValue(Landroidx/compose/runtime/PersistentCompositionLocalMap;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberCompositionContext(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
    .locals 7

    const/16 v0, 0xce

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->reference:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    new-instance v1, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    iget-boolean v5, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    iget-object v6, v2, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/NeverEqualPolicy;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;-><init>(Landroidx/compose/runtime/ComposerImpl;IZZLandroidx/compose/runtime/NeverEqualPolicy;)V

    invoke-direct {v0, v1}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;-><init>(Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;)V

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    iget-object p0, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public static final rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method public static final takeMax-impl(Landroidx/collection/MutableIntList;)I
    .locals 10

    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v1

    :cond_0
    iget v2, p0, Landroidx/collection/MutableIntList;->_size:I

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    iget v2, p0, Landroidx/collection/MutableIntList;->_size:I

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/collection/MutableIntList;->content:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)V

    iget v2, p0, Landroidx/collection/MutableIntList;->_size:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->removeAt(I)I

    iget v2, p0, Landroidx/collection/MutableIntList;->_size:I

    ushr-int/lit8 v3, v2, 0x1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p0, v4}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v8

    if-ge v6, v2, :cond_1

    invoke-virtual {p0, v6}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v9

    if-le v9, v8, :cond_1

    if-le v9, v5, :cond_0

    invoke-virtual {p0, v4, v9}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {p0, v6, v5}, Landroidx/collection/MutableIntList;->set(II)V

    move v4, v6

    goto :goto_0

    :cond_1
    if-le v8, v5, :cond_0

    invoke-virtual {p0, v4, v8}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {p0, v7, v5}, Landroidx/collection/MutableIntList;->set(II)V

    move v4, v7

    goto :goto_0

    :cond_2
    const-string p0, "IntList is empty."

    invoke-static {p0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwNoSuchElementException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return v1
.end method

.method public static final updateChangedFlags(I)I
    .locals 3

    const v0, 0x12492492

    and-int/2addr v0, p0

    const v1, 0x24924924

    and-int/2addr v1, p0

    const v2, -0x36db6db7

    and-int/2addr p0, v2

    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v2, v0

    or-int/2addr p0, v2

    shl-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static final updateCompositionMap([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
    .locals 6

    sget-object v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->Empty:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    new-instance v1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    iput-object v0, v1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->map:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    iget-object v4, v3, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/ProvidableCompositionLocal;

    iget-boolean v5, v3, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    if-nez v5, :cond_0

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/ValueHolder;

    invoke-virtual {v4, v3, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->updatedStateOf$runtime_release(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/ValueHolder;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->build()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p0

    return-object p0
.end method
