.class public abstract Lkotlinx/serialization/internal/CollectionLikeSerializer;
.super Lkotlinx/serialization/internal/AbstractCollectionSerializer;
.source "SourceFile"


# instance fields
.field public final elementSerializer:Lkotlinx/serialization/KSerializer;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/CollectionLikeSerializer;->elementSerializer:Lkotlinx/serialization/KSerializer;

    return-void
.end method


# virtual methods
.method public abstract insert(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;)V
    .locals 3

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/internal/CollectionLikeSerializer;->elementSerializer:Lkotlinx/serialization/KSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lkotlinx/serialization/internal/CollectionLikeSerializer;->insert(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->collectionSize(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    const-string v2, "descriptor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    move-result-object p1

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/serialization/internal/CollectionLikeSerializer;->elementSerializer:Lkotlinx/serialization/KSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v3, v2, v4, v5}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method
