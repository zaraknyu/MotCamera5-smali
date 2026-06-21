.class public final Lkotlinx/serialization/internal/LinkedHashMapSerializer;
.super Lkotlinx/serialization/internal/AbstractCollectionSerializer;
.source "SourceFile"


# instance fields
.field public final descriptor:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->descriptor:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    return-void
.end method


# virtual methods
.method public final builder()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method public final builderSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/LinkedHashMap;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    check-cast p1, Ljava/util/Map;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/Map;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->descriptor:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    return-object p0
.end method

.method public final readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;)V
    .locals 5

    check-cast p3, Ljava/util/Map;

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    const-string v1, "builder"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object p0, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->descriptor:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    const/4 v2, 0x0

    invoke-interface {p1, p0, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    add-int/lit8 v4, p2, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lkotlinx/serialization/json/JsonElementSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    iget-object p2, p2, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->kind:Landroidx/compose/ui/unit/DpSize;

    instance-of p2, p2, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez p2, :cond_0

    invoke-static {v1, p3}, Lkotlin/collections/MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p0, v3, v0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-interface {p3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p0, "Value must follow key in a map, index for key: "

    const-string p1, ", returned index for value: "

    invoke-static {p0, p2, v3, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->collectionSize(Ljava/lang/Object;)I

    const-string v0, "descriptor"

    iget-object v1, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->descriptor:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    move-result-object p1

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, p2, 0x1

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-virtual {p1, v1, p2, v4, v2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x2

    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-virtual {p1, v1, v3, v2, v0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p0, "<this>"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public final toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/LinkedHashMap;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
