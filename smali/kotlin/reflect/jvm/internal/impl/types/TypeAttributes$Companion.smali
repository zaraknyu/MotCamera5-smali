.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public idCounter:Ljava/lang/Object;

.field public final idPerType:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idPerType:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idCounter:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    .line 6
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    .line 7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/Flags;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idPerType:Ljava/lang/Object;

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idCounter:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idPerType:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idCounter:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public writeUntil(ILandroidx/media3/common/util/TimedValueQueue;)V
    .locals 8

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idPerType:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idCounter:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    if-ge v1, p1, :cond_5

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idCounter:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idCounter:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->DEFAULT_INSTANCE:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget-boolean v1, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eqz v1, :cond_1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;

    if-ne v3, v7, :cond_0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    invoke-virtual {p2, v4, v6}, Landroidx/media3/common/util/TimedValueQueue;->writeTag(II)V

    invoke-virtual {v2, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->writeTo(Landroidx/media3/common/util/TimedValueQueue;)V

    invoke-virtual {p2, v4, v5}, Landroidx/media3/common/util/TimedValueQueue;->writeTag(II)V

    goto :goto_1

    :cond_0
    iget v7, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->wireType:I

    invoke-virtual {p2, v4, v7}, Landroidx/media3/common/util/TimedValueQueue;->writeTag(II)V

    invoke-static {p2, v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->writeElementNoTag(Landroidx/media3/common/util/TimedValueQueue;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;

    if-ne v3, v1, :cond_2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    invoke-virtual {p2, v4, v6}, Landroidx/media3/common/util/TimedValueQueue;->writeTag(II)V

    invoke-virtual {v2, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->writeTo(Landroidx/media3/common/util/TimedValueQueue;)V

    invoke-virtual {p2, v4, v5}, Landroidx/media3/common/util/TimedValueQueue;->writeTag(II)V

    goto :goto_2

    :cond_2
    iget v1, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->wireType:I

    invoke-virtual {p2, v4, v1}, Landroidx/media3/common/util/TimedValueQueue;->writeTag(II)V

    invoke-static {p2, v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->writeElementNoTag(Landroidx/media3/common/util/TimedValueQueue;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idCounter:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idCounter:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-void
.end method
