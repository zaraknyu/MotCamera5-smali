.class public final Lkotlinx/serialization/internal/UuidSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UuidSerializer;

.field public static final descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/UuidSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UuidSerializer;->INSTANCE:Lkotlinx/serialization/internal/UuidSerializer;

    new-instance v0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    const-string v1, "kotlin.uuid.Uuid"

    sget-object v2, Lkotlinx/serialization/descriptors/PrimitiveKind$INT;->INSTANCE$8:Lkotlinx/serialization/descriptors/PrimitiveKind$INT;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)V

    sput-object v0, Lkotlinx/serialization/internal/UuidSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 14

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "uuidString"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x10

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0x20

    if-eq p1, v4, :cond_3

    const/16 v5, 0x24

    if-eq p1, v5, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-gt v2, v3, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "substring(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" of length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0x8

    invoke-static {v1, p1, p0}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(IILjava/lang/String;)J

    move-result-wide v6

    invoke-static {p1, p0}, Lkotlin/uuid/UuidKt;->checkHyphenAt(ILjava/lang/String;)V

    const/16 p1, 0x9

    const/16 v1, 0xd

    invoke-static {p1, v1, p0}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(IILjava/lang/String;)J

    move-result-wide v8

    invoke-static {v1, p0}, Lkotlin/uuid/UuidKt;->checkHyphenAt(ILjava/lang/String;)V

    const/16 p1, 0xe

    const/16 v1, 0x12

    invoke-static {p1, v1, p0}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(IILjava/lang/String;)J

    move-result-wide v10

    invoke-static {v1, p0}, Lkotlin/uuid/UuidKt;->checkHyphenAt(ILjava/lang/String;)V

    const/16 p1, 0x13

    const/16 v1, 0x17

    invoke-static {p1, v1, p0}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(IILjava/lang/String;)J

    move-result-wide v12

    invoke-static {v1, p0}, Lkotlin/uuid/UuidKt;->checkHyphenAt(ILjava/lang/String;)V

    const/16 p1, 0x18

    invoke-static {p1, v5, p0}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(IILjava/lang/String;)J

    move-result-wide p0

    shl-long v4, v6, v4

    shl-long v0, v8, v0

    or-long/2addr v0, v4

    or-long/2addr v0, v10

    const/16 v4, 0x30

    shl-long v4, v12, v4

    or-long/2addr p0, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lkotlin/uuid/Uuid;

    invoke-direct {v2, v0, v1, p0, p1}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    return-object v2

    :cond_3
    invoke-static {v1, v0, p0}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(IILjava/lang/String;)J

    move-result-wide v5

    invoke-static {v0, v4, p0}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(IILjava/lang/String;)J

    move-result-wide p0

    cmp-long v0, v5, v2

    if-nez v0, :cond_4

    cmp-long v0, p0, v2

    if-nez v0, :cond_4

    :goto_1
    sget-object p0, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    return-object p0

    :cond_4
    new-instance v0, Lkotlin/uuid/Uuid;

    invoke-direct {v0, v5, v6, p0, p1}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    return-object v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/UuidSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlin/uuid/Uuid;

    const-string/jumbo p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method
