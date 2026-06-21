.class public final Lkotlinx/serialization/internal/ByteSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/ByteSerializer;

.field public static final descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/ByteSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/ByteSerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteSerializer;

    new-instance v0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    const-string v1, "kotlin.Byte"

    sget-object v2, Lkotlinx/serialization/descriptors/PrimitiveKind$INT;->INSTANCE$2:Lkotlinx/serialization/descriptors/PrimitiveKind$INT;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)V

    sput-object v0, Lkotlinx/serialization/internal/ByteSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/ByteSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeByte(B)V

    return-void
.end method
