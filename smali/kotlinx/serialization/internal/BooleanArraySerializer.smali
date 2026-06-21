.class public final Lkotlinx/serialization/internal/BooleanArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/BooleanArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/BooleanArraySerializer;

    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    sput-object v0, Lkotlinx/serialization/internal/BooleanArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanArraySerializer;

    return-void
.end method


# virtual methods
.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [Z

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public final empty()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Z

    return-object p0
.end method

.method public final readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Lkotlinx/serialization/internal/BooleanArrayBuilder;

    const-string v0, "builder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result p0

    invoke-static {p3}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)V

    iget-object p1, p3, Lkotlinx/serialization/internal/BooleanArrayBuilder;->buffer:[Z

    iget p2, p3, Lkotlinx/serialization/internal/BooleanArrayBuilder;->position:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p3, Lkotlinx/serialization/internal/BooleanArrayBuilder;->position:I

    aput-boolean p0, p1, p2

    return-void
.end method

.method public final toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Z

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;->buffer:[Z

    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;->position:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/BooleanArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-object p0
.end method

.method public final writeContent(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;I)V
    .locals 4

    check-cast p2, [Z

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-boolean v1, p2, v0

    const-string v2, "descriptor"

    iget-object v3, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeBoolean(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
