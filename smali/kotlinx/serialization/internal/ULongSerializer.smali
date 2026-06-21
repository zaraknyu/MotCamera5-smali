.class public final Lkotlinx/serialization/internal/ULongSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

.field public static final descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ULongSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    const-string v0, "kotlin.ULong"

    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    invoke-static {v0, v1}, Lkotlinx/serialization/internal/Platform_commonKt;->InlinePrimitiveDescriptor(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/InlineClassDescriptor;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/internal/ULongSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    sget-object p0, Lkotlinx/serialization/internal/ULongSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->decodeLong()J

    move-result-wide p0

    new-instance v0, Lkotlin/ULong;

    invoke-direct {v0, p0, p1}, Lkotlin/ULong;-><init>(J)V

    return-object v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/ULongSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lkotlin/ULong;

    iget-wide v0, p2, Lkotlin/ULong;->data:J

    sget-object p0, Lkotlinx/serialization/internal/ULongSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeLong(J)V

    return-void
.end method
