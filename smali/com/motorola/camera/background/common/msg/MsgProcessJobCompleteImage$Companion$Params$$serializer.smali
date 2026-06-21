.class public final synthetic Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.motorola.camera.background.common.msg.MsgProcessJobCompleteImage.Companion.Params"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "appContext"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "jobContext"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string/jumbo v0, "status"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "jobMetrics"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->$childSerializers:[Lkotlin/Lazy;

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x3

    sget-object v1, Lcom/motorola/camera/background/common/JobMetrics$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/JobMetrics$$serializer;

    aput-object v1, v0, p0

    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 11

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->$childSerializers:[Lkotlin/Lazy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move v3, v1

    :goto_0
    if-eqz v3, :cond_5

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_4

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_2

    const/4 v10, 0x2

    if-eq v4, v10, :cond_1

    const/4 v10, 0x3

    if-ne v4, v10, :cond_0

    sget-object v4, Lcom/motorola/camera/background/common/JobMetrics$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/JobMetrics$$serializer;

    invoke-interface {p1, p0, v10, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/motorola/camera/background/common/JobMetrics;

    or-int/lit8 v5, v5, 0x8

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p0, v4}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p0

    :cond_1
    aget-object v4, v0, v10

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, p0, v10, v4, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/motorola/camera/background/common/ReturnCode;

    or-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v7

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v6

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v4, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/JobMetrics;)V

    return-object v4
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    const-string/jumbo p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->$childSerializers:[Lkotlin/Lazy;

    iget-object v1, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->appContext:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v2, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {p1, p0, v1, v0, v2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/common/JobMetrics$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/JobMetrics$$serializer;

    iget-object p2, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->jobMetrics:Lcom/motorola/camera/background/common/JobMetrics;

    const/4 v1, 0x3

    invoke-virtual {p1, p0, v1, v0, p2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method
