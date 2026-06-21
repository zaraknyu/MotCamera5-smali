.class public final Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;
.super Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;
.source "SourceFile"


# instance fields
.field public map:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;


# virtual methods
.method public final bridge synthetic build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .locals 0

    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->build()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->build()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p0

    return-object p0
.end method

.method public final build()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->node:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 2
    iget-object v1, p0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->map:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 3
    iget-object v2, v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->node:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;

    .line 7
    new-instance v1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->node:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 9
    iget v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->size:I

    .line 10
    invoke-direct {v1, v0, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;I)V

    .line 11
    :goto_0
    iput-object v1, p0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->map:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    return-object v1
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/ProvidableCompositionLocal;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-super {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/ValueHolder;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Landroidx/compose/runtime/ValueHolder;

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/ProvidableCompositionLocal;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-super {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/ValueHolder;

    return-object p0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/ProvidableCompositionLocal;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    check-cast p1, Landroidx/compose/runtime/ProvidableCompositionLocal;

    check-cast p2, Landroidx/compose/runtime/ValueHolder;

    invoke-super {p0, p1, p2}, Ljava/util/AbstractMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/ValueHolder;

    return-object p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/ProvidableCompositionLocal;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-super {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/ValueHolder;

    return-object p0
.end method
