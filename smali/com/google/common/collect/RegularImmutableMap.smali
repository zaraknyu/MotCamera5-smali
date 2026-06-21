.class public final Lcom/google/common/collect/RegularImmutableMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lcom/google/common/collect/RegularImmutableMap;


# instance fields
.field public final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field public transient entrySet:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

.field public final transient hashTable:Ljava/lang/Object;

.field public transient keySet:Lcom/google/common/collect/RegularImmutableMap$KeySet;

.field public final transient size:I

.field public transient values:Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    return-void
.end method

.method public static copyOf(Ljava/util/HashMap;)Lcom/google/common/collect/RegularImmutableMap;
    .locals 4

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    new-instance v2, Lcom/google/common/base/Splitter;

    invoke-direct {v2, v1}, Lcom/google/common/base/Splitter;-><init>(I)V

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, v2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v3, v1

    if-le v0, v3, :cond_1

    array-length v3, v1

    invoke-static {v3, v0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->expandedCapacity(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/common/base/Splitter;->buildOrThrow()Lcom/google/common/collect/RegularImmutableMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->values:Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->values:Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entrySet:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;[Ljava/lang/Object;I)V

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entrySet:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/google/common/collect/Maps;->equalsImpl(Ljava/lang/Object;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 p0, 0x0

    aget-object p0, v1, p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    aget-object p0, v1, v3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_2
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v2, p0, [B

    if-eqz v2, :cond_6

    move-object v2, p0

    check-cast v2, [B

    array-length p0, v2

    add-int/lit8 v4, p0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/Maps;->smear(I)I

    move-result p0

    :goto_1
    and-int/2addr p0, v4

    aget-byte v5, v2, p0

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    goto :goto_0

    :cond_4
    aget-object v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    xor-int/lit8 p0, v5, 0x1

    aget-object p0, v1, p0

    goto :goto_4

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    instance-of v2, p0, [S

    if-eqz v2, :cond_9

    move-object v2, p0

    check-cast v2, [S

    array-length p0, v2

    add-int/lit8 v4, p0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/Maps;->smear(I)I

    move-result p0

    :goto_2
    and-int/2addr p0, v4

    aget-short v5, v2, p0

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_7

    goto :goto_0

    :cond_7
    aget-object v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    xor-int/lit8 p0, v5, 0x1

    aget-object p0, v1, p0

    goto :goto_4

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_9
    check-cast p0, [I

    array-length v2, p0

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Maps;->smear(I)I

    move-result v4

    :goto_3
    and-int/2addr v4, v2

    aget v5, p0, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    goto/16 :goto_0

    :cond_a
    aget-object v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    xor-int/lit8 p0, v5, 0x1

    aget-object p0, v1, p0

    :goto_4
    if-nez p0, :cond_b

    return-object v0

    :cond_b
    return-object p0

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Maps;->hashCodeImpl(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->keySet:Lcom/google/common/collect/RegularImmutableMap$KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;)V

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->keySet:Lcom/google/common/collect/RegularImmutableMap$KeySet;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "size"

    iget v1, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->checkNonnegative(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    move-object v2, p0

    check-cast v2, Lcom/google/common/collect/ImmutableList$Itr;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Itr;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->values:Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->values:Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    :cond_0
    return-object v0
.end method
