.class public final Lkotlinx/serialization/json/JsonNullSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

.field public static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/json/JsonNullSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNullSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v1, "kotlinx.serialization.json.JsonNull"

    sget-object v2, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v1, v2, v0}, Landroidx/compose/ui/unit/DpKt;->buildSerialDescriptor$default(Ljava/lang/String;Landroidx/compose/ui/unit/DpSize;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/JsonNullSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroidx/compose/ui/unit/IntRectKt;->asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeNotNullMark()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p0

    :cond_0
    new-instance p0, Lkotlinx/serialization/json/internal/JsonDecodingException;

    const-string p1, "Expected \'null\' literal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonNullSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/JsonNull;

    const-string/jumbo p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/compose/ui/unit/IntRectKt;->access$verify(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    iget-object p0, p1, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    const-string p1, "null"

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->print(Ljava/lang/String;)V

    return-void
.end method
