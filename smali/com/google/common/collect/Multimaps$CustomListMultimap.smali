.class public final Lcom/google/common/collect/Multimaps$CustomListMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient factory:Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

.field public transient map:Ljava/util/Map;

.field public transient totalSize:I


# virtual methods
.method public final asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->asMap:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->map:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/NavigableMap;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Ljava/io/Serializable;Ljava/util/Map;I)V

    :goto_0
    iput-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->asMap:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    return-void
.end method
