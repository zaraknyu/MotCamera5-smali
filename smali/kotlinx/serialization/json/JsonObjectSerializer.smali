.class public final Lkotlinx/serialization/json/JsonObjectSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

.field public static final descriptor:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonObjectSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    sget-object v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    sput-object v0, Lkotlinx/serialization/json/JsonObjectSerializer;->descriptor:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Landroidx/compose/ui/unit/IntRectKt;->asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;

    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>()V

    invoke-virtual {v0, p1}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->merge(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonObjectSerializer;->descriptor:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/JsonObject;

    const-string/jumbo p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/compose/ui/unit/IntRectKt;->access$verify(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    new-instance p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    invoke-direct {p0}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V

    return-void
.end method
