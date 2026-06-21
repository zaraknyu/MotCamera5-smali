.class public final Lkotlinx/serialization/internal/UByteSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UByteSerializer;

.field public static final descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/UByteSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UByteSerializer;->INSTANCE:Lkotlinx/serialization/internal/UByteSerializer;

    const-string v0, "kotlin.UByte"

    sget-object v1, Lkotlinx/serialization/internal/ByteSerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteSerializer;

    invoke-static {v0, v1}, Lkotlinx/serialization/internal/Platform_commonKt;->InlinePrimitiveDescriptor(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/InlineClassDescriptor;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/internal/UByteSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/UByteSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->decodeByte()B

    move-result p0

    new-instance p1, Lkotlin/UByte;

    invoke-direct {p1, p0}, Lkotlin/UByte;-><init>(B)V

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/UByteSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlin/UByte;

    iget-byte p0, p2, Lkotlin/UByte;->data:B

    sget-object p2, Lkotlinx/serialization/internal/UByteSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-virtual {p1, p2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeByte(B)V

    return-void
.end method
